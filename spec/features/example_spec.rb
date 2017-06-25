describe "basic feature test", :type => :feature do
#   before :each do
#     User.make(email: 'user@example.com', password: 'password')
#   end

  it "sees the ember welcome page" do
    visit '/'
    # wait_for_ajax
    expect(page).to have_content 'Congratulations'
  end
end

def wait_for_ajax
 counter = 0
 while true
 
  active = page.evaluate_script("return $.active").to_i
  puts "AJAX $.active result: " + active.to_s
  
  break if active < 1
  counter += 1
  sleep(0.1)
  raise "AJAX request took longer than 5 seconds OR there was a JS error. Check your console." if counter >= 50
 end
end