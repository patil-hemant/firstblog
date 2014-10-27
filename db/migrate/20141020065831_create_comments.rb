class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_description
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
