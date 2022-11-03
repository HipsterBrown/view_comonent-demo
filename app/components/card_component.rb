# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  delegate :octicon, to: :helpers

  renders_one :header, lambda { |**args, &block|
    Slot.new(**args, classes: "d-Card-header #{args.fetch(:classes, '')}", &block)
  }
  renders_one :body, lambda { |**args, &block|
    Slot.new(**args, classes: "d-Card-body #{args.fetch(:classes, '')}", &block)
  }
  renders_many :actions, lambda { |text:|
    content_tag(:button, text, class: 'btn BtnGroup-item')
  }

  class Slot < ViewComponent::Base
    attr_reader :classes, :data, :extra_attributes

    def initialize(classes: '', data: {}, extra_attributes: {})
      @classes = classes
      @data = data
      @extra_attributes = extra_attributes
    end

    def call
      content_tag(:div, content, extra_attributes.merge(class: classes, data: data))
    end
  end
end
