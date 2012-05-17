module CmsHelper
  def get_page_links
    @links = @cms_site.pages.root.children.published.map do |page|
        link_to page.label, page.full_path 
    end
    @links
  end
end
