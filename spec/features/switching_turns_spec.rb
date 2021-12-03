feature "Switching turns" do
  scenario "game starts with player1's turn" do
    sign_in_and_play
    expect(page).to have_content("Charlie, your turn!")
  end

  scenario "it's players2's turn after player1 attacked" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content("Charlie, your turn!")
    expect(page).to have_content("Snoopy, your turn!")
  end
end