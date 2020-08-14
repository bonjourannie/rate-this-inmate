class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :bio
      t.string :gender
      t.integer :age
      t.string :username 
      t.string :location 
      t.string :looking_for 
      t.string :password_digest 

      t.timestamps
    end
  end
end
