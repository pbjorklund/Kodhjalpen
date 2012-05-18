FactoryGirl.define do
  factory :site, class: Cms::Site do
    label "test"
    identifier "cucumber_test"
    hostname "cucumber_test.local"
    path "test"
    locale "en"
    is_mirrored "false"
  end
end

FactoryGirl.define do
  factory :site_with_page, parent: :site do |site|
    after(:create) { |this_site|
      layout = FactoryGirl.create(:layout, site: this_site)
      page = FactoryGirl.create(:page, site: this_site, layout: layout)
      FactoryGirl.create(:child_page, site: this_site, layout: layout, parent: page )
    }
  end
end
