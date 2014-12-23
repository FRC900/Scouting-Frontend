class CreateMatchLineitemValues < ActiveRecord::Migration
  def change
    create_table :match_lineitem_values do |t|
      t.references :match_form_lineitem, index: true
      t.text :value

      t.timestamps
    end
  end
end
