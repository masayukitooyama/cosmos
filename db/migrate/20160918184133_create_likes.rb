class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :book_id
      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
