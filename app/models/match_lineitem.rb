class MatchLineitem < ActiveRecord::Base
  belongs_to :match_form_lineitem
  belongs_to :match_form_data
end
