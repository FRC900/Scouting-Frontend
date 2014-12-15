class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.references :data_type, index: true
      t.references :form_data, index: true

      t.timestamps
    end
  end
end
