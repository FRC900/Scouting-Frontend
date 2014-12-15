class CreateDataValues < ActiveRecord::Migration
  def change
    create_table :data_values do |t|
      t.references :data, index: true

      t.timestamps
    end
  end
end
