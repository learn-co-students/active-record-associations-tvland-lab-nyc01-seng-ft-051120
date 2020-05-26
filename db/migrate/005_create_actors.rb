class CreateActors < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    create_table :actors do |t| 
      t.string :first_name
      t.integer :last_name
    end
  end
end