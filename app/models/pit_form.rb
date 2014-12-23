class PitForm < ActiveRecord::Base
  has_and_belongs_to_many :competitions
  has_many :competitions_pit_forms
  
  has_many :pit_categories
  has_many :pit_form_lineitems, :through=>:pit_categories
  has_many :pit_lineitems, :through=>:pit_form_lineitems
  has_many :pit_lineitem_values, :through=>:pit_lineitems
end
