class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :user, index: true
      t.references :book, index: true
      t.boolean :like

      t.timestamps
    end
  end
end
