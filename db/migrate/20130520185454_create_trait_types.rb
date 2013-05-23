class CreateTraitTypes < ActiveRecord::Migration
  def change
    create_table :trait_types do |t|
      t.string :name
      t.string :image_url
      t.string :description
    end
  end
end
