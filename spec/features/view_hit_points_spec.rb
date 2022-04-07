feature 'view hitpoints' do
  scenario 'viewing player 2s hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Terry'
    fill_in :player_2_name, with: 'Barry'
    click_button 'Submit'
    expect(page).to have_content 'Barry: 100 hp'
  end
end