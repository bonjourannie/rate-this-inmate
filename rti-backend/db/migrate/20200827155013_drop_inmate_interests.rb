class DropInmateInterests < ActiveRecord::Migration[6.0]
  def change
    drop_table :inmate_interests
  end
end
