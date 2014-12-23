class CreatePitCategories < ActiveRecord::Migration
  def change
    create_table :pit_categories do |t|
      t.string :name
      t.references :pit_form, index: true

      t.timestamps
    end
  end
end
