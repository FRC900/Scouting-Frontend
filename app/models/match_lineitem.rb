class MatchLineitem < ActiveRecord::Base
  belongs_to :match_form_lineitem
  belongs_to :match_form_datum
  
  has_many :match_lineitem_values
  
  def name
    return "#{self.match_form_lineitem.name}-#{self.match_form_datum.name rescue ""}"
  end
end
