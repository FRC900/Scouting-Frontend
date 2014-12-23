class CreateMatchForms < ActiveRecord::Migration
  def change
    create_table :match_forms do |t|
      t.string :name
      t.references :competition, index: true

      t.timestamps
    end
  end
end
