class AddNotesToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :notes, :text
  end
end
