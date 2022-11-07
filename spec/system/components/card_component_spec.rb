require 'rails_helper'

RSpec.describe 'CardComponent', type: :system do
  it 'renders default body content' do
    visit '/rails/view_components/card_component/default'

    expect(page).to have_css '[class~="d-Card-body"]', text: 'This is some body content'
  end

  it 'renders header slot content' do
    visit '/rails/view_components/card_component/with_header'

    expect(page).to have_css '[class~="d-Card-header"]', text: 'A card header'
  end

  it 'renders header slot with custom class' do
    visit '/rails/view_components/card_component/with_slot_attributes'

    expect(page).to have_css '[class="d-Card-header color-fg-attention"]', text: 'A card header'
  end

  it 'renders action slot buttons' do
    visit '/rails/view_components/card_component/with_actions'

    expect(page).to have_css 'div[class=BtnGroup]'
    expect(page).to have_css 'button[class="btn BtnGroup-item"]', text: 'Action!'
    expect(page).to have_css 'button[class="btn BtnGroup-item"]', text: 'Another one!'
  end

  it 'renders action slot collection' do
    visit '/rails/view_components/card_component/with_actions_collection'

    expect(page).to have_css 'div[class=BtnGroup]'
    expect(page).to have_css 'button[class="btn BtnGroup-item"]', text: 'Action!'
    expect(page).to have_css 'button[class="btn BtnGroup-item"]', text: 'Another one'
  end
end
