FactoryGirl.define do

	sequence :category_name do |n|
		"category #{n}"
	end

	factory :user do
		name 'John Doe'
		email 'email@doe.com'
	end

	factory :category do
		name { generate :category_name }
	end

end
