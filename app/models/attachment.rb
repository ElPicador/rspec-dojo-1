class Attachment < ActiveRecord::Base
  attr_accessible :filename, :post_id

  belongs_to :post

  scope :of_category, ->(category_id) { joins(:post).where(posts: {category_id: category_id}) }
end
