feature "enter names" do
  scenario '2 players can enter their names and see them displayed' do
    sign_in_and_play
    # save_and_open_page # will save the web page and open the browser to display it
    expect(page).to have_content "Charlie VS Snoopy"
  end
end