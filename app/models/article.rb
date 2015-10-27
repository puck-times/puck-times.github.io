class Article < ActiveRecord::Base
  has_many :comments
  validates  :title, :intro, :need_to_know, :recap, :hot_and_cold, :opp_lineup, :sharks_lineup, :further_reading, :memorable_moments, :share,
            presence: true
            # length: { minimum: 5 }
end


