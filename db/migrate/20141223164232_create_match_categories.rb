class CreateMatchCategories < ActiveRecord::Migration
  def change
    create_table :match_categories do |t|
      t.string :name
      t.references :match_form, index: true

      t.timestamps
    end
  end
end
