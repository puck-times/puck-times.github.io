class GameDate < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      add_column :articles, :game_date, :date
    end
  end
end
