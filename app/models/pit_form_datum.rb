class PitFormDatum < ActiveRecord::Base
  belongs_to :pit_form
  belongs_to :match
  belongs_to :competition_team
  belongs_to :scouter
end
