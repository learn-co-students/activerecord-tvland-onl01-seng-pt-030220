class AddColumnsToNetwork < ActiveRecord::Migration[5.1]
    def change
     add_column :networks, :name, :string
    end
end