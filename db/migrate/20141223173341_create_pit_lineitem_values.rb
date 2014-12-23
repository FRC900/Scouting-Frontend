class CreatePitLineitemValues < ActiveRecord::Migration
  def change
    create_table :pit_lineitem_values do |t|
      t.references :pit_form_lineitem, index: true
      t.text :value

      t.timestamps
    end
  end
end
