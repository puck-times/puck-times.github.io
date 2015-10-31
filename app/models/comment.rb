class Comment < ActiveRecord::Base
  belongs_to :article
  validates :comment_body, :username,
            presence: true
  validates :email, format: { with: /@/,
    message: "Must enter valid email address" }
end
