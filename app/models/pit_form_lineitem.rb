class PitFormLineitem < ActiveRecord::Base
  belongs_to :pit_category
  belongs_to :competition
  
  has_many :pit_lineitems
  has_many :pit_lineitem_values, :through=> :pit_lineitems
end
