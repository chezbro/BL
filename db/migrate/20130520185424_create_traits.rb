class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.integer :person_id
      t.integer :trait_type_id
    end
  end
end
