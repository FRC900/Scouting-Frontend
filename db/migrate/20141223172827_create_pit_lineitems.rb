class CreatePitLineitems < ActiveRecord::Migration
  def change
    create_table :pit_lineitems do |t|
      t.references :pit_form_lineitem, index: true
      t.references :pit_form_data, index: true

      t.timestamps
    end
  end
end
