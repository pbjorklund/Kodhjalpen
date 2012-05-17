module CmsHelper
  def get_navigation
    @cms_site.pages.root.children.published.map do |page|
      css_class = current_page?(page.full_path) ? "active" : ""
      link = link_to page.label, page.full_path 
      content_tag 'li', link, class: css_class
    end
  end
end
