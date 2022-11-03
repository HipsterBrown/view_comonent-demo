require 'rails_helper'

RSpec.describe CardComponent, type: :component do
  it 'renders default body content' do
    render_preview :default, params: { body: 'Hello world!' }

    expect(page).to have_content 'Hello world!'
  end
end
