class Article < ActiveRecord::Base
  has_many :comments
  validates  :title, :intro, :need_to_know, :recap, :hot_and_cold, :opp_lineup, :sharks_lineup, :link1_text, :link1_url, :memorable_moments,
            presence: true,
            length: { minimum: 5 }
end


