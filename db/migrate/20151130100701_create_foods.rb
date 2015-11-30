class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.references :pet, index: true, foreign_key: true
      t.timestamps
    end
  end
end
