class Post < ActiveRecord::Base
  attr_accessible :body, :category_id, :user_id, :published, :title

  belongs_to :category
  belongs_to :user
  has_one :attachment

  scope :with_attachments, joins('LEFT OUTER JOIN attachments on attachments.post_id = post.id').where('attachments.post_id IS NULL')
  scope :without_attachments, joins('LEFT OUTER JOIN attachments on attachments.post_id = post.id').where('attachments.post_id IS NOT NULL')
end
