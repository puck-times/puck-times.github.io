class AddFieldsForLineups < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      add_column :articles, :opp_gk, :string
      add_column :articles, :opp_d1, :string
      add_column :articles, :opp_d2, :string
      add_column :articles, :opp_d3, :string
      add_column :articles, :opp_d4, :string
      add_column :articles, :opp_d5, :string
      add_column :articles, :opp_d6, :string
      add_column :articles, :opp_f1, :string
      add_column :articles, :opp_f2, :string
      add_column :articles, :opp_f3, :string
      add_column :articles, :opp_f4, :string
      add_column :articles, :opp_f5, :string
      add_column :articles, :opp_f6, :string
      add_column :articles, :opp_f7, :string
      add_column :articles, :opp_f8, :string
      add_column :articles, :opp_f9, :string
      add_column :articles, :opp_f10, :string
      add_column :articles, :opp_f11, :string
      add_column :articles, :opp_f12, :string
      add_column :articles, :sharks_gk, :string
      add_column :articles, :sharks_d1, :string
      add_column :articles, :sharks_d2, :string
      add_column :articles, :sharks_d3, :string
      add_column :articles, :sharks_d4, :string
      add_column :articles, :sharks_d5, :string
      add_column :articles, :sharks_d6, :string
      add_column :articles, :sharks_f1, :string
      add_column :articles, :sharks_f2, :string
      add_column :articles, :sharks_f3, :string
      add_column :articles, :sharks_f4, :string
      add_column :articles, :sharks_f5, :string
      add_column :articles, :sharks_f6, :string
      add_column :articles, :sharks_f7, :string
      add_column :articles, :sharks_f8, :string
      add_column :articles, :sharks_f9, :string
      add_column :articles, :sharks_f10, :string
      add_column :articles, :sharks_f11, :string
      add_column :articles, :sharks_f12, :string
    end
  end
end
