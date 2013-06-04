class AddColumnsToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :political_stance, :string
  	add_column :people, :religion, :string
  end
end
