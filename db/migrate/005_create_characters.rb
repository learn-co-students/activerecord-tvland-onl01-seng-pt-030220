class CreateCharacters < ActiveRecord::Migration[5.1]
  
  def change
    create_table :characters do |char|
      char.string :name 
      char.string :catchphrase
      char.integer :show_id
      char.integer :actor_id 
      char.timestamp
    end
  end
end