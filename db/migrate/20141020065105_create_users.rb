class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :name
      t.string :email_id

      t.timestamps
    end
  end
end
