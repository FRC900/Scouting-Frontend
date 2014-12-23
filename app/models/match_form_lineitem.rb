class MatchFormLineitem < ActiveRecord::Base
  belongs_to :match_category
  belongs_to :competition
  
  has_many :match_lineitems
  has_many :match_lineitem_values, :through=> :match_lineitems
end
