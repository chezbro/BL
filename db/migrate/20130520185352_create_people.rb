class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.datetime :dob
      t.datetime :dod
      t.string :full_name
      t.text :eulogy
      t.string :photo_url
      t.string :charity
    end
  end
end
