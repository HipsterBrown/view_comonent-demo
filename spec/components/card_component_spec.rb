require 'rails_helper'

RSpec.describe CardComponent, type: :component do
  subject { described_class.new }

  it 'renders with required slots' do
    render_inline(subject) do |component|
      component.body { 'Hello world' }
    end

    expect(page).to have_content 'Hello world'
  end

  it 'renders preview with default body slot content' do
    render_preview :default, params: { body: 'Hello world!' }

    expect(page).to have_content 'Hello world!'
  end

  it 'renders header slot content' do
    render_preview :with_header, params: { header: 'Hello from the Header' }

    expect(page).to have_content 'Hello from the Header'
  end

  it 'renders header slot custom class' do
    render_preview :with_slot_attributes, params: { header: 'Hello from the Header' }

    expect(page).to have_css '[class="d-Card-header color-fg-attention"]', text: 'Hello from the Header'
  end

  it 'renders actions slot' do
    render_preview :with_actions

    expect(page).to have_css 'button', text: 'Action!'
    expect(page).to have_css 'button', text: 'Another one!'
  end

  it 'renders actions slot collection' do
    render_preview :with_actions_collection

    expect(page).to have_css 'button', text: 'Action!'
    expect(page).to have_css 'button', text: 'Another one'
  end
end
