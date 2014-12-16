class AddNotesToCompetitionsTeam < ActiveRecord::Migration
  def change
    add_column :competitions_teams, :notes, :text
  end
end
