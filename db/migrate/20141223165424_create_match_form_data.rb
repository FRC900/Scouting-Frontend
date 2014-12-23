class CreateMatchFormData < ActiveRecord::Migration
  def change
    create_table :match_form_data do |t|
      t.references :match_form, index: true
      t.references :match, index: true
      t.references :competitions_team, index: true
      t.references :scouter, index: true
      t.string :form_comments
      t.string :filename
      t.text :notes

      t.timestamps
    end
  end
end
