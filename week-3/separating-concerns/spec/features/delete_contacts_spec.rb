feature 'delete contacts' do
  scenario 'deleted contacts are removed from the index page' do
    visit('/')
    click_link('Bert')
    click_button('Delete Contact')
    expect(page).to have_content('Sally')
    expect(page).to_not have_content('Bert')
  end
end
