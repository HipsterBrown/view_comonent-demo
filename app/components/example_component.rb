# frozen_string_literal: true

class ExampleComponent < ViewComponent::Base
  with_collection_parameter :item

  def initialize(item: nil, item_counter: nil, item_iteration: nil, message: nil)
    super
    @message = item&.fetch(:message, nil) || message
    @counter = item_counter
    @iteration = item_iteration
  end

  def call
    if content
      content_tag(:div, content)
    elsif @counter
      content_tag(:span, "#{@counter} (of #{@iteration&.size}). #{@message} ")
    else
      content_tag(:span, @message)
    end
  end
end
