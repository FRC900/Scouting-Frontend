class CreatePitFormData < ActiveRecord::Migration
  def change
    create_table :pit_form_data do |t|
      t.references :pit_form, index: true
      t.references :match, index: true
      t.references :competition_team, index: true
      t.references :scouter, index: true
      t.string :filename
      t.text :notes

      t.timestamps
    end
  end
end
