class AddColumnNameToDataTypes < ActiveRecord::Migration
  def change
    add_column :data_types, :column_name, :string
  end
end
