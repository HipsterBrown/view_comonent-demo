class ExampleComponentPreview < ViewComponent::Preview
  def with_message(message: 'This is a preview')
    render ExampleComponent.new message: message
  end

  def with_content_block
    render ExampleComponent.new do
      tag.h1 content_tag(:a, 'ViewComponent!', href: 'https://viewcomponent.org')
    end
  end
end
