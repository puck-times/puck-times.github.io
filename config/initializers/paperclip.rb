#example actual URL
# https://s3-us-west-1.amazonaws.com/puck-times/articles/photo2s/000/000/005/original/rinne-nashville-oct31.jpg?

# config/initializers/paperclip.rb
# We are actually setting this to 's3_domain_url',
# so it's not a placeholder for something else.
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-1.amazonaws.com'
