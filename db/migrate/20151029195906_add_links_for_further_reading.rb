class AddLinksForFurtherReading < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.remove :further_reading
      add_column :articles, :link1_text, :string
      add_column :articles, :link1_url, :string
      add_column :articles, :link2_text, :string
      add_column :articles, :link2_url, :string
      add_column :articles, :link3_text, :string
      add_column :articles, :link3_url, :string
    end
  end
end
