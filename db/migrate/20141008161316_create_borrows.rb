class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.references :book, index: true
      t.references :user, index: true
      t.date :started_on
      t.date :finished_on

      t.timestamps
    end
  end
end
