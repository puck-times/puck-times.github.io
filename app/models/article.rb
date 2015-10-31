class Article < ActiveRecord::Base
  require 'aws-sdk-v1'
  require 'aws-sdk'
  has_many :comments
  validates  :title, :game_date, :intro, :need_to_know, :recap, :hot_and_cold, :link1_text, :link1_url, :memorable_moments,
            presence: true #, length: { minimum: 5 }
  has_attached_file :photo #,
  # styles: {
  #   thumb: '100x100>',
  #   square: '250x250#',
  #   medium: '350x350>'
  # } #,
  # # default_url: "#{Rails.root}/app/assets/images/missing.jpg",
  # storage: :s3,
  # path: "/images/:style/:id/:filename",
  # # :s3_credentials => {
  #     :bucket => ENV['puck-times'],
  #     :access_key_id => ENV['AKIAJYFKB37X2KZO635A'],
  #     :secret_access_key => ENV['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']
  #   }

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  has_attached_file :photo2
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/
  has_attached_file :photo3
  validates_attachment_content_type :photo3, content_type: /\Aimage\/.*\Z/
end


