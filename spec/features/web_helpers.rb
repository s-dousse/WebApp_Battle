def sign_in_and_play
  visit '/'
  fill_in('name1', with: 'Charlie')
  fill_in('name2', with: 'Snoopy')
  click_button 'Submit'
end