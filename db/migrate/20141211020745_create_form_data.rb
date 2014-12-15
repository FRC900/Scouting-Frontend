class CreateFormData < ActiveRecord::Migration
  def change
    create_table :form_data do |t|
      t.references :form, index: true
      t.integer :match_number
      t.references :team, index: true
      t.references :scouter, index: true
      t.text :comments

      t.timestamps
    end
  end
end
