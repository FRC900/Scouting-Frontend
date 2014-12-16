class AddCompetitionIdToForm < ActiveRecord::Migration
  def change
    add_column :forms, :competition_id, :integer
  end
end
