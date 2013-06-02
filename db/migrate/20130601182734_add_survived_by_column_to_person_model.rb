class AddSurvivedByColumnToPersonModel < ActiveRecord::Migration
  def change
  	add_column :people, :survived_by, :string
  end
end
