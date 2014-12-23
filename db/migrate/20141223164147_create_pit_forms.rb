class CreatePitForms < ActiveRecord::Migration
  def change
    create_table :pit_forms do |t|
      t.string :name
      t.references :competition, index: true

      t.timestamps
    end
  end
end
