module FormHelper
  def errors_for model, field
    if model.errors[field].present?
      content_tag :span, :class => 'error_explanation' do
        model.errors[field].join(", ")
      end
    end
  end
end
