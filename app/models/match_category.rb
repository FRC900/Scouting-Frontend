class MatchCategory < ActiveRecord::Base
  belongs_to :match_form
  
  has_many :match_form_lineitems, :through=> :match_form
  has_many :match_lineitems, :through=> :match_form_lineitems
  has_many :match_lineitem_values, :through=> :match_lineitems
end
