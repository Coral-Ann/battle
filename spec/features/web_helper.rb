def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Terry'
    fill_in :player_2_name, with: 'Barry'
    click_button 'Submit'
end