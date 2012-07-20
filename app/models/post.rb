class Post

	include Mongoid::Document
	include Mongoid::Timestamps

	field :title, type: String
	field :content, type: String
	field :url, type: String
	field :draft, type: Boolean
	field :slug, type: String

	validates_presence_of :title

	default_scope order_by(:created_at => :desc)

	before_save :gen_slug

	def gen_slug
		self.slug = self.title.downcase.gsub(/'/, '').gsub(/[^a-z0-9]+/, '-') do |slug|
			slug.chop! if slug.last == '-'
		end
	end

	def external?
		!url.blank?
	end

	def has_more_tag
		content =~ /<!--\s*more\s*-->/i ? true : false
	end

	def excerpt
		if content.index(/<!--\s*more\s*-->/i)
			content.split(/<!--\s*more\s*-->/i)[0]
		else
			content
		end
	end
end

