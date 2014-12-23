class MatchFormDatum < ActiveRecord::Base
  belongs_to :match_form
  belongs_to :match
  belongs_to :competitions_team
  belongs_to :scouter
  
  has_many :match_lineitems
  has_many :match_lineitem_values, :through=>:match_lineitems
  
  def name
    return "#{self.competition.year_name} #{self.match.number} #{eslf.competition_team.team.full_name}"
  end
end
