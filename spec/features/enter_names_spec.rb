feature "enter names" do
  scenario '2 players can enger their name and see them displayed' do
    visit '/'
    fill_in('name1', with: 'Charlie')
    fill_in('name2', with: 'Snoopy')
    click_button 'Submit'

    save_and_open_page # will save the web page and open the browser to display it

    expect(page).to have_content "Charlie VS Snoopy"
  end
end