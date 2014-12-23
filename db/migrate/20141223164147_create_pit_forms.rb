class CreatePitForms < ActiveRecord::Migration
  def change
    create_table :pit_forms do |t|
      t.string :name

      t.timestamps
    end
  end
end
