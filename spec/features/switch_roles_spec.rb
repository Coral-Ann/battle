feature "Swtich turns" do
  scenario "Player 2 attacks player 1 on second turn" do
    sign_in_and_play
    click_button("Attack")
    click_button("OK")
    click_button("Attack")
    expect(page).to have_content "Terry attacked Barry"
  end
end