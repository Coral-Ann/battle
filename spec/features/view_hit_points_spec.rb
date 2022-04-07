feature 'view hitpoints' do
  scenario 'viewing player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Barry: 100 hp'
  end
end