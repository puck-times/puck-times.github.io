class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :intro
      t.text :need_to_know
      t.text :recap
      t.text :hot_and_cold
      t.text :opp_lineup
      t.text :sharks_lineup
      t.text :further_reading
      t.text :memorable_moments
      t.text :share

      t.timestamps null: false
    end
  end
end
