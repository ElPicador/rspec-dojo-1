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

	factory :attachment do
		filename 'one file.jpg'
		association :post
	end

	factory :post do
		title 'one title'

		factory :post_with_new_category do
			category
		end
	end

end
