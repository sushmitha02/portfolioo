module DefaultPageContent
	extend ActiveSupport::Concern
	included do
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title = "Devportfolioo | My Portfolio Website"
		@seo_keywords = "Sushmitha portfolio"
	end
end