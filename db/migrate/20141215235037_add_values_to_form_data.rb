class AddValuesToFormData < ActiveRecord::Migration
  def change
    add_column :form_data, :filename, :string
    add_column :form_data, :notes, :text
  end
end
