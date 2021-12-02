feature "attacking player2" do
  scenario 'player1 attacks player2 and gets a confirmation' do
    sign_in_and_play

    # save_and_open_page # will save the web page and open the browser to display it

    click_button 'Attack'
    expect(page).to have_content "Succesful attack!"
  end
end