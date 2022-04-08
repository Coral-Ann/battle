def sign_in_and_play
  visit('/')
    fill_in :player_1, with: 'Terry'
    fill_in :player_2, with: 'Barry'
    click_button 'Submit'
end