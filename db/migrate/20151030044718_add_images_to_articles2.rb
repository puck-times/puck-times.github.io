class AddImagesToArticles2 < ActiveRecord::Migration
  def up
    add_attachment :articles, :photo2
    add_attachment :articles, :photo3
  end

  def down
    remove_attachment :articles, :photo2
    remove_attachment :articles, :photo3
  end
end
