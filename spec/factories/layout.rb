FactoryGirl.define do
  factory :layout, class: Cms::Layout do
    label "Default Layout"
    identifier "default"
    content "Page loaded!"
    app_layout "application"

    css "default_css"
    js "default_js"
    position 0
  end
end
