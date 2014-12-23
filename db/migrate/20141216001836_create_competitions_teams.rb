class CreateCompetitionsTeams < ActiveRecord::Migration
  def change
    create_table :competitions_teams do |t|
      t.references :competition, index: true
      t.references :team, index: true
      t.text :notes

      t.timestamps
    end
  end
end
