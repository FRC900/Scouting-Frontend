class Team < ActiveRecord::Base
    has_many :form_data
    has_and_belongs_to_many :competitions
    has_many :competitions_teams
end
