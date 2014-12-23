class CreateMatchLineitems < ActiveRecord::Migration
  def change
    create_table :match_lineitems do |t|
      t.references :match_form_lineitem, index: true
      t.references :match_form_data, index: true

      t.timestamps
    end
  end
end
