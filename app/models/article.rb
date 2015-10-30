class Article < ActiveRecord::Base
  has_many :comments
  validates  :title, :game_date, :intro, :need_to_know, :recap, :hot_and_cold, :link1_text, :link1_url, :memorable_moments,
            presence: true #, length: { minimum: 5 }
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  has_attached_file :photo2
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/
  has_attached_file :photo3
  validates_attachment_content_type :photo3, content_type: /\Aimage\/.*\Z/
end


