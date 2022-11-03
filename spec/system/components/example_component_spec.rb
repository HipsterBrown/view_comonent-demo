require 'rails_helper'

RSpec.describe 'ExampleComponent', type: :system do
  it 'renders message' do
    visit '/rails/view_components/example_component/with_message'

    expect(page).to have_content 'This is a preview'
  end
end
