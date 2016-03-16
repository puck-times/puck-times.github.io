class UpdateCommentsAgain < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.remove :comment
      add_column :comments, :comment_body, :text
    end
  end
end
