require 'rails_helper'

RSpec.feature "Adding posts", type: :feature do
  scenario "User can add an image as a post" do
      visit "posts/new"
      attach_file '/Users/ginafrankel/Projects/weekend_challenge/instagram-challenge/instagram-challenge/spec/features/user_can_add_a_post_spec.rb'
      click_on 'Save Post'
      expect(page).to have_content(image) 
      # look at html 
  end
end

# describe "check images and favicon" do
#   before { visit "url/to/check")

#   it "should have the images" do
#     page.should have_css('img', text: "image1.jpg")

#   it "should have the favicon" do
#     page.should have_xpath("/html/head/link[@href='favicon.ico']"
      # looking at html 
#   end 
# end

# describe "Check for Images" do
#   before { visit page_path }

#   it "should not have broken images" do
#     all_images = page.all('img')
#     all_images.each do |img|
#       get img[:src]
#       expect(response).to be_successful
#     end
#   end  
# end