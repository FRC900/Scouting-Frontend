class CompetitionsPitForm < ActiveRecord::Base
  belongs_to :competition
  belongs_to :pit_form
end
