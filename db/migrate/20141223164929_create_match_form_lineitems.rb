class CreateMatchFormLineitems < ActiveRecord::Migration
  def change
    create_table :match_form_lineitems do |t|
      t.string :name
      t.string :type
      t.references :match_category, index: true
      t.string :column_name

      t.timestamps
    end
  end
end
