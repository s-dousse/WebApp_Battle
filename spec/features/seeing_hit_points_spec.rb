feature "2 players enter their names" do
  scenario 'display hit points' do
    sign_in_and_play
    # save_and_open_page # will save the web page and open the browser to display it
    expect(page).to have_content "Snoopy: 60HP"
  end
end