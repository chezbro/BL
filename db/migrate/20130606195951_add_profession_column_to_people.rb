class AddProfessionColumnToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :profession, :string
  end
end
