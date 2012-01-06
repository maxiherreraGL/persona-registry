class CreatePersonaPeople < ActiveRecord::Migration
  def change
    create_table :persona_people do |t|
      t.references :persona
      t.references :person

      t.timestamps
    end
    add_index :persona_people, :persona_id
    add_index :persona_people, :person_id
  end
end
