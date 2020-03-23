class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :picture
      t.string :breed
      t.string :name
      t.boolean :friendly_w_kids
      t.boolean :energetic
      t.boolean :fixed
      t.boolean :cats
      t.boolean :dogs
      t.boolean :status
      
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
