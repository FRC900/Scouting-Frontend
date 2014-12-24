class Match < ActiveRecord::Base
  belongs_to :competition
  
  has_many :match_form_data
  has_many :match_lineitems, :through=>:match_form_data
  has_many :match_lineitem_values, :through=>:match_lineitems
  
  def number_comp
    return "#{self.number} - #{self.competition.name}"
  end
end
