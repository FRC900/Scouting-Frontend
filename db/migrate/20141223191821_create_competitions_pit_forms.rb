class CreateCompetitionsPitForms < ActiveRecord::Migration
  def change
    create_table :competitions_pit_forms do |t|
      t.references :competition, index: true
      t.references :pit_form, index: true

      t.timestamps
    end
  end
end
