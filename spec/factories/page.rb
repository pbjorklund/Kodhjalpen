FactoryGirl.define do
  factory :page, class: Cms::Page do
    parent_id nil
    target_page_id nil
    label "Default Page"
    slug nil
    full_path "/"
    children_count 1
    position 0
    is_published true
    content "layout_content_a"
  end
end

FactoryGirl.define do
  factory :child_page, class: Cms::Page do
    target_page_id nil
    label "child Page"
    slug "child"
    children_count 0
    position 0
    is_published true
    content "layout_content_a"
  end
end
