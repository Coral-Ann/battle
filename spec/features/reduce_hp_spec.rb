feature "Reduce HP" do
  scenario "Reduce player 2's HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "Terry vs. Barry Terry: 90 hp Barry: 100 hp"
  end
end