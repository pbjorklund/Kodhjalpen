FactoryGirl.define do
  factory :layout, class: Cms::Layout do
    label "Default Layout"
    identifier "default"
    content <<-eos
    Page loaded
    <a href="users/sign_up" class="btn btn-primary btn-large">User signup</a>
    eos
    app_layout "application"

    css "default_css"
    js "default_js"
    position 0
  end
end
