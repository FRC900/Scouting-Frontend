class CreateMatchForms < ActiveRecord::Migration
  def change
    create_table :match_forms do |t|
      t.string :name

      t.timestamps
    end
  end
end
