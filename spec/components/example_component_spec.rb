# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExampleComponent, type: :component do
  it 'renders default preview' do
    render_preview :with_message

    expect(page).to have_content 'This is a preview'
  end
end
