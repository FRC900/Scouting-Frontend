class MatchForm < ActiveRecord::Base
  has_and_belongs_to_many :competitions
  has_many :competitions_match_forms
  
  has_many :match_categories, :dependent => :destroy
  has_many :match_form_lineitems, :through=>:match_categories
  has_many :match_lineitems, :through=>:match_form_lineitems
  has_many :match_lineitem_values, :through=>:match_lineitems
  
  accepts_nested_attributes_for :match_categories
end
