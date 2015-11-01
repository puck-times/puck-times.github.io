class Article < ActiveRecord::Base
  require 'aws-sdk-v1'
  require 'aws-sdk'
  has_many :comments
  validates  :title, :game_date, :intro, :need_to_know, :recap, :hot_and_cold, :link1_text, :link1_url, :memorable_moments,
            presence: true #, length: { minimum: 5 }

  has_attached_file :photo,
        :styles => { :medium => "x300", :thumb => "x100" },
        :storage => :s3,
        :bucket => 'puck-times',
        # :s3_credentials => {
        #     :access_key_id => "AKIAJEQR67DRO7EWLF5A",
        #     :secret_access_key => "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"},
         :s3_credentials => "#{Rails.root}/config/aws.yml",
         :url => ':s3_domain_url',
         :path => '/:class/:attachment/:id_partition/:style/:filename',
         :s3_host_name => 's3-us-west-1.amazonaws.com'

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  has_attached_file :photo2,
  :styles => { :medium => "x300", :thumb => "x100" },
        :storage => :s3,
        :bucket => 'puck-times',
         :s3_credentials => "#{Rails.root}/config/aws.yml",
         :url => ':s3_domain_url',
         :path => '/:class/:attachment/:id_partition/:style/:filename',
         :s3_host_name => 's3-us-west-1.amazonaws.com'

  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/

  has_attached_file :photo3,
  :styles => { :medium => "x300", :thumb => "x100" },
        :storage => :s3,
        :bucket => 'puck-times',
         :s3_credentials => "#{Rails.root}/config/aws.yml",
         :url => ':s3_domain_url',
         :path => '/:class/:attachment/:id_partition/:style/:filename',
         :s3_host_name => 's3-us-west-1.amazonaws.com'


  validates_attachment_content_type :photo3, content_type: /\Aimage\/.*\Z/
end


