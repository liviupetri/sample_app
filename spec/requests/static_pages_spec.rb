require 'spec_helper'

describe "StaticPages" do
	# describe "GET /static_pages" do
	# it "works! (now write some real specs)" do
	#   # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	#   get static_pages_index_path
	#   response.status.should be(200)
	# end
	# end

	describe "StaticPages" do
		describe "Home page" do
			it "should have the content 'Sample App'" do
				visit '/static_pages/home'
				page.should have_content('Sample App')	
			end
			it "should have title | Home" do
				visit '/static_pages/home'
				page.should have_selector('title' , 
					:text => '| Home')
			end
		end

		describe "Help Page" do
			it "should have the content 'Help'" do
				visit '/static_pages/help'
				page.should have_content('Help')
			end
			it "should have title | Help" do
				visit '/static_pages/help'
				page.should have_selector('title',
					:text => '| Help')
			end

		end
		describe "About Page" do
			it "should have the content 'About'" do
				visit '/static_pages/about'
				page.should have_content('About')
			end
			it "should have title | About" do
				visit '/static_pages/about'
				page.should have_selector('title',
					:text => '| About')
			end
		end
	end


end