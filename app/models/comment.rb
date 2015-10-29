class Comment < ActiveRecord::Base
  belongs_to :article
  validates  :username, :comment_body,
            presence: true
            # length: { minimum: 5 }
end
