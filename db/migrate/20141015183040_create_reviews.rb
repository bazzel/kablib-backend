class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :user, index: true
      t.references :book, index: true
      t.integer :rating

      t.timestamps
    end
  end
end
