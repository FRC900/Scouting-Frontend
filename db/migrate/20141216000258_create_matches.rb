class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :number
      t.references :competition, index: true

      t.timestamps
    end
  end
end
