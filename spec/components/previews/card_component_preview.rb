class CardComponentPreview < ViewComponent::Preview
  def default(body: 'This is some body content')
    render CardComponent.new do |component|
      component.with_body do
        tag.p body
      end
    end
  end

  def with_header(header: 'A card header', body: 'This is some body content')
    render CardComponent.new do |component|
      component.with_header do
        tag.h1 header
      end
      component.with_body do
        tag.p body
      end
    end
  end

  def with_slot_attributes(header: 'A card header', body: 'This is some body content')
    render CardComponent.new do |component|
      component.with_header(classes: 'color-fg-attention') do
        tag.h1 header
      end
      component.with_body(classes: 'f1') do
        tag.p body
      end
    end
  end

  def with_actions(header: 'A card header', body: 'This is some body content')
    render CardComponent.new do |component|
      component.with_header do
        tag.h1 header
      end
      component.with_body do
        tag.p body
      end
      component.with_action text: 'Action!'
      component.with_action text: 'Another one!'
    end
  end

  def with_actions_collection(header: 'A card header', body: 'This is some body content')
    render CardComponent.new do |component|
      component.with_header do
        tag.h1 header
      end
      component.with_body do
        tag.p body
      end
      component.with_actions([{ text: 'Action!' }, { text: 'Another one' }])
    end
  end
end
