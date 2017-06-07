class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :genre
      t.boolean :registered
      t.date :date_of_birth
      t.string :name
      t.references :owner, foreign_key: true
      t.date :last_time
      t.references :breed, foreign_key: true

      t.timestamps
    end
  end
end
