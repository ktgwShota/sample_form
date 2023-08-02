class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.string :user_last_name
      t.string :user_first_name
      t.string :user_last_reading
      t.string :user_first_reading
      t.string :login_id
      t.string :login_pw
      
      t.timestamps
    end
  end
end
