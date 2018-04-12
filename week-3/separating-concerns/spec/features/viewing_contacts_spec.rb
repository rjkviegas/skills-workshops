feature 'viewing contacts' do
  scenario 'contact names appear on the main page' do
    visit('/')
    expect(page).to have_content('Bert')
    expect(page).to have_content('Sally')
  end

  scenario 'clicking on a name displays all details for that contact' do
    visit('/')
    click_link('Bert')
    expect(page).to_not have_content('Sally')
    expect(page).to have_content('Bert')
    expect(page).to have_content('94 Whitechapel Road')
    expect(page).to have_content('01245960378')
  end
end
