require 'spec_helper'

describe Attachment do

	context 'scope' do
		describe '.of_category' do
			subject { Attachment.of_category(attachment_category_1.post.category_id) }

			let!(:attachment_category_1) { create(:attachment) }
			let!(:attachment_category_2) { create(:attachment) }

			it { should == [ attachment_category_1 ]}
		end
	end

end
