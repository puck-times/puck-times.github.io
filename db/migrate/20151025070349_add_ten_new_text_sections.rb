class AddTenNewTextSections < ActiveRecord::Migration
  def create_table
     :articles do |t|
      t.string :title
      t.text :intro
      t.text :need_to_know
      t.text :in_case_you_missed_it
      t.text :hot_cold
      t.text :opp_lineup
      t.text :sharks_lineup
      t.text :further_reading
      t.text :moments
      t.text :subscribe
      t.timestamps null: false
    end
  end
end
