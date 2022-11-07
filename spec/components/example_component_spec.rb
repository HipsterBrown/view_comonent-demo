# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExampleComponent, type: :component do
  let(:message) { nil }

  subject { described_class.new(message: message) }

  context 'with message attribute' do
    let(:message) { 'My message' }

    it 'renders message content' do
      render_inline(subject)

      expect(page).to have_content 'My message'
    end
  end

  it 'renders default preview' do
    render_preview :with_message

    expect(page).to have_content 'This is a preview'
  end
end
