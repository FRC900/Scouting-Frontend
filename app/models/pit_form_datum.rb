class PitFormDatum < ActiveRecord::Base
  belongs_to :pit_form
  belongs_to :competitions_team
  belongs_to :scouter
  
  has_many :pit_lineitems
  has_many :pit_lineitem_values, :through=>:pit_lineitems
  
  def name
    return "#{self.competition.year_name} #{eslf.competition_team.team.full_name}"
  end
end
