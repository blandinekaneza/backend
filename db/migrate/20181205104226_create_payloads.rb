class CreatePayloads < ActiveRecord::Migration[5.2]
  def change
    create_table :payloads do |t|
      t.text :payload_id
      t.boolean :reused
      t.text :manufacturer
      t.text :payload_type
      t.float :payload_mass_kg
      t.float :payload_mass_lbs
      t.text :orbit
      t.references :mission, foreign_key: true
      t.references :nationality, foreign_key: true

      t.timestamps
    end
  end
end
