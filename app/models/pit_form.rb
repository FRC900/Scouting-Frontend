class PitForm < ActiveRecord::Base
  belongs_to :competition
  
  has_many :pit_categories
  has_many :pit_form_lineitems, :through=>:pit_categories
  has_many :pit_lineitems, :through=>:pit_form_lineitems
  has_many :pit_lineitem_values, :through=>:pit_lineitems
end
