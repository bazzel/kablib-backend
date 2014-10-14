class AddCoverImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :cover_image, :text
  end
end
