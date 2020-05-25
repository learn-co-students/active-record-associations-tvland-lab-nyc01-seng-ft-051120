class CreateCharacterTable < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :actor_id
      t.string :show_id
    end
  end
end
