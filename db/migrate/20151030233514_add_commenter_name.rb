class AddCommenterName < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      add_column :comments, :email, :string
    end
  end
end
