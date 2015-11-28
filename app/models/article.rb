class Article < ActiveRecord::Base
  require 'aws-sdk-v1'
  require 'aws-sdk'
  has_many :comments
  validates  :title, :game_date, :intro, :need_to_know, :recap, :hot_and_cold, :link1_text, :link1_url, :memorable_moments, :opp_gk, :opp_d1, :opp_d2, :opp_d3, :opp_d4, :opp_d5, :opp_d6, :opp_f1, :opp_f2, :opp_f3, :opp_f4, :opp_f5, :opp_f6, :opp_f7, :opp_f8, :opp_f9, :opp_f10, :opp_f11, :opp_f12, :sharks_gk, :sharks_d1, :sharks_d2, :sharks_d3, :sharks_d4, :sharks_d5, :sharks_d6, :sharks_f1, :sharks_f2, :sharks_f3, :sharks_f4, :sharks_f5, :sharks_f6, :sharks_f7, :sharks_f8, :sharks_f9, :sharks_f10, :sharks_f11, :sharks_f12,
            presence: true #, length: { minimum: 5 }

  has_attached_file :photo,
        :styles => { :medium => "x300", :thumb => "x100" },
        :storage => :s3,
        # #USE THE BELOW CREDENTIALS FOR LOCAL TESTING
          # :s3_credentials => "#{Rails.root}/config/aws.yml",
        # #USE THIS FOR HEROKU
        :s3_credentials => {
            :bucket => ENV['S3_BUCKET_NAME'],
            :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
            :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
            },
         :bucket => 'puck-times',
         :url => ':s3_domain_url',
         :path => '/:class/:attachment/:id_partition/:style/:filename',
         :s3_host_name => 's3-us-west-1.amazonaws.com'
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  has_attached_file :photo2,
  :styles => { :medium => "x300", :thumb => "x100" },
        :storage => :s3,
        :bucket => 'puck-times',
          #USE THE BELOW CREDENTIALS FOR LOCAL TESTING
          # :s3_credentials => "#{Rails.root}/config/aws.yml",
         #USE THIS FOR HEROKU
         :s3_credentials => {
            :bucket => ENV['S3_BUCKET_NAME'],
            :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
            :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
            },
         :url => ':s3_domain_url',
         :path => '/:class/:attachment/:id_partition/:style/:filename',
         :s3_host_name => 's3-us-west-1.amazonaws.com'
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/

  has_attached_file :photo3,
  :styles => { :medium => "x300", :thumb => "x100" },
        :storage => :s3,
        :bucket => 'puck-times',
         #USE THE BELOW CREDENTIALS FOR LOCAL TESTING
          # :s3_credentials => "#{Rails.root}/config/aws.yml",
         #USE THIS FOR HEROKU
         :s3_credentials => {
            :bucket => ENV['S3_BUCKET_NAME'],
            :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
            :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
            },         :url => ':s3_domain_url',
         :path => '/:class/:attachment/:id_partition/:style/:filename',
         :s3_host_name => 's3-us-west-1.amazonaws.com'
  validates_attachment_content_type :photo3, content_type: /\Aimage\/.*\Z/
end


