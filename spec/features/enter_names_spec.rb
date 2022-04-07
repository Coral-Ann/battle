feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Terry'
    fill_in :player_2_name, with: 'Barry'
    click_button 'Submit'
    expect(page).to have_content 'Terry vs. Barry'
  end
end