class PitCategory < ActiveRecord::Base
  belongs_to :pit_form
  
  has_many :pit_form_lineitems, :through=> :pit_form
  has_many :pit_lineitems, :through=> :pit_form_lineitems
  has_many :pit_lineitem_values, :through=> :pit_lineitems
end
