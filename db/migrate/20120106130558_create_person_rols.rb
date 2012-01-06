class CreatePersonRols < ActiveRecord::Migration
  def change
    create_table :person_rols do |t|
      t.references :person
      t.references :rol

      t.timestamps
    end
    add_index :person_rols, :person_id
    add_index :person_rols, :rol_id
  end
end
