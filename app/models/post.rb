class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_one :attachment

  scope :without_attachments, joins('LEFT OUTER JOIN attachments on attachments.post_id = posts.id').where('attachments.post_id IS NULL')
  scope :with_attachments, joins('LEFT OUTER JOIN attachments on attachments.post_id = posts.id').where('attachments.post_id IS NOT NULL')
end
