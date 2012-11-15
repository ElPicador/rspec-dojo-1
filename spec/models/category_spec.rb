require 'spec_helper'

describe Category do
	context 'validation' do
		subject { create :category }

		it { should validate_presence_of :name }

		context 'uniqueness' do
			subject { build :category, name: 'name'}

			context 'with duplicate name' do
				let!(:category) { create :category, name: 'name'}

				it { should_not be_valid }
			end

			context 'with unique name' do
				let!(:category_with_different_name) { create :category }

				it { should be_valid }
			end
		end
	end


end
