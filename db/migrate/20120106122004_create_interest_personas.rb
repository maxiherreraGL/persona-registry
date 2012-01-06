class CreateInterestPersonas < ActiveRecord::Migration
  def change
    create_table :interest_personas do |t|
      t.references :interest
      t.references :persona

      t.timestamps
    end
    add_index :interest_personas, :interest_id
    add_index :interest_personas, :persona_id
  end
end
