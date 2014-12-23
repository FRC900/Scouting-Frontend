class MatchFormDatum < ActiveRecord::Base
  belongs_to :match_form
  belongs_to :match
  belongs_to :competition_team
  belongs_to :scouter
end
