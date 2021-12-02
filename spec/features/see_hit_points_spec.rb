feature "2 players enter their names" do
  scenario 'display hit points' do
    visit '/'
    fill_in('name1', with: 'Charlie')
    fill_in('name2', with: 'Snoopy')
    click_button 'Submit'

    # save_and_open_page # will save the web page and open the browser to display it

    expect(page).to have_content "Snoopy: 60HP"
  end
end