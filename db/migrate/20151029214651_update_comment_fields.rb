class UpdateCommentFields < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.remove :commenter
      t.remove :body
      add_column :comments, :username, :string
      add_column :comments, :comment, :text
    end
  end
end
