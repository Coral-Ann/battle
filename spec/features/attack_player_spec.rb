feature "Attack player" do
  scenario "Attacks player 2 and shows confirmation" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Terry attacked Barry"
  end
end