class Article < ActiveRecord::Base
  require 'aws-sdk-v1'
  require 'aws-sdk'
  has_many :comments
  validates  :title, :game_date, :intro, :need_to_know, :recap, :hot_and_cold, :link1_text, :link1_url, :memorable_moments,
            presence: true #, length: { minimum: 5 }
  has_attached_file :photo,
     :styles => { :medium => "x300", :thumb => "x100" },
        :default_url => "****",
        :storage => :s3,
        :bucket => 'puck-times',
        :s3_credentials =>  {
            :bucket => ENV['S3_BUCKET_NAME'],
            :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
            :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
            # :bucket => ENV['puck-times'],
            # :access_key_id => ENV['AKIAIMIIIYQQ7R3KTQJQ'],
            # :secret_access_key => ENV['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']
          },
            :url => "/:image/:id/:style/:basename.:extension",
            :path => ":image/:id/:style/:basename.:extension"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  has_attached_file :photo2
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/
  has_attached_file :photo3
  validates_attachment_content_type :photo3, content_type: /\Aimage\/.*\Z/
end


