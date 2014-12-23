class MatchFormDatum < ActiveRecord::Base
  belongs_to :match_form
  belongs_to :match
  belongs_to :competition_team
  belongs_to :scouter
  
  has_many :match_lineitems
  has_many :match_lineitem_values, :through=>:match_lineitems
end
