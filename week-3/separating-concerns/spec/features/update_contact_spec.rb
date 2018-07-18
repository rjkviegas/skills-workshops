feature 'update contact' do
  scenario 'updated details appear on the main page' do
    visit('/')
    click_link('Bert')
    click_button('Update Details')
    fill_in :name, with: 'Mr Update'
    click_button 'Confirm'
    expect(page).to have_content('Mr Update')
  end
end
