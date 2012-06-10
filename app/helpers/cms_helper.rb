module CmsHelper
  def get_navigation
    #Pray to god that we only have one site
    @cms_site ||= Cms::Site.first

    @cms_site.pages.root.children.published.map do |page|
      get_navigation_link page.full_path, page.label
    end
  end

  def get_navigation_link path, link_name
    css_class = current_page?(path) ? "active" : ""
    link = link_to link_name, path 
    content_tag 'li', link, class: css_class
  end
end
