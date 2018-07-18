feature 'create new contacts' do
  scenario 'created contacts are added to the index page' do
    visit('/')
    click_link('Add Contact')
    fill_in :name, with: 'Test McGee'
    fill_in :address, with: '1337 Test Avenue'
    fill_in :tel, with: '12345678'
    click_button('Add Contact')
    expect(page).to have_content('Test McGee')
  end
end
