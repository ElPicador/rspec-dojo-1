require 'spec_helper'

describe Post do

	context 'relation' do
		it { should belong_to(:category) }
		it { should belong_to(:user) }
		it { should have_one(:attachment) }
	end

	context 'scopes' do
		subject { Post }
		let!(:post_without_attachment) { create :post }
		let!(:post_with_attachment) { create(:attachment).post }

		its(:with_attachments) { should == [ post_with_attachment ] }
    its(:without_attachments) { should == [ post_without_attachment] }
	end

end
