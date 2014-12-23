class Scouter < ActiveRecord::Base
  has_many :match_form_data
  has_many :match_lineitems, :through=>:match_form_data
  has_many :match_lineitem_values, :through=>:match_lineitems
  
  has_many :pit_form_data
  has_many :pit_lineitems, :through=>:pit_form_data
  has_many :pit_lineitem_values, :through=>:pit_lineitems
end
