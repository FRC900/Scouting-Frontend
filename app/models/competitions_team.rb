class CompetitionsTeam < ActiveRecord::Base
  belongs_to :competition
  belongs_to :team
  
  #Match data
  has_many :match_form_data
  has_many :match_lineitems, :through=>:match_form_data
  has_many :match_lineitem_values, :through=>:match_lineitems
  
  #Pit data
  has_many :pit_form_data
  has_many :pit_lineitems, :through=>:pit_form_data
  has_many :pit_lineitem_values, :through=>:pit_lineitems
  
  def name
    return "#{self.team.full_name} @ #{self.competition.year_name}"
  end
end
