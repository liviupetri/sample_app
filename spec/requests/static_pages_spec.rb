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
			it "should have base title" do
				visit '/static_pages/home'
				page.should have_selector('title' , 
					:text => 'RoR Tutorial')
			end
			it "should not have custom page_title" do
				visit '/static_pages/home'
				page.should_not have_selector('title',
					:text => "| Home")
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
		describe "Contact Page" do
			it "should have h1 'Contact'" do
				visit '/static_pages/contact'
				page.should have_selector('h1',
					:text => 'Contact')
			end
			it "should have title '| Contact'" do
				visit '/static_pages/contact'
				page.should have_selector('title',
					:text => '| Contact')
				
			end
		end
	end


end
