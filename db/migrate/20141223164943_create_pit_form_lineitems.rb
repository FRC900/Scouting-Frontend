class CreatePitFormLineitems < ActiveRecord::Migration
  def change
    create_table :pit_form_lineitems do |t|
      t.string :name
      t.string :data_type
      t.references :pit_category, index: true
      t.string :column_name

      t.timestamps
    end
  end
end
