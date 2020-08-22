class CreateInmateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :inmate_interests do |t|
      t.integer :user_id
      t.integer :interest_id
      t.integer :inmate_id
    end
    
  end
end
