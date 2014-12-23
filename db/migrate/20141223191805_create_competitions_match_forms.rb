class CreateCompetitionsMatchForms < ActiveRecord::Migration
  def change
    create_table :competitions_match_forms do |t|
      t.references :competition, index: true
      t.references :match_form, index: true

      t.timestamps
    end
  end
end
