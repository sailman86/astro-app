class CreateAstronauts < ActiveRecord::Migration[6.1]
  def change
    create_table :astronauts do |t|
      t.string :name
      t.text :bio
      t.string :nationality
      t.date :time_slot
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
