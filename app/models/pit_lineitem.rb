class PitLineitem < ActiveRecord::Base
  belongs_to :pit_form_lineitem
  belongs_to :pit_form_data
  
  has_many :pit_lineitem_values
end
