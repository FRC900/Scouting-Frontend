class PitLineitem < ActiveRecord::Base
  belongs_to :pit_form_lineitem
  belongs_to :pit_form_data
end
