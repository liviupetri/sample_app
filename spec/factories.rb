FactoryGirl.define do 
	factory :user do
		name "Michael Hartl"
		email "mhrtl@domain.com"
		password "foobar"
		password_confirmation "foobar"
	end
end