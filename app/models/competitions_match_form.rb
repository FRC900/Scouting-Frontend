class CompetitionsMatchForm < ActiveRecord::Base
  belongs_to :competition
  belongs_to :match_form
end
