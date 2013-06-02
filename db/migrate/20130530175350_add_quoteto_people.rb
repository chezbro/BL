class AddQuotetoPeople < ActiveRecord::Migration
  def change
  	add_column :people, :quote, :string
  end
end
