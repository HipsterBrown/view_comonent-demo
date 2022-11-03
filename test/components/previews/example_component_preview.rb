class ExampleComponentPreview < ViewComponent::Preview
  def with_message
    render ExampleComponent.new message: 'This is a preview'
  end

  def with_content_block
    render ExampleComponent.new do
      tag.h1 do
        content_tag :a, 'ViewComponent!', href: 'https://viewcomponent.org'
      end
    end
  end
end
