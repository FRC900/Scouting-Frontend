class PitLineitem < ActiveRecord::Base
  belongs_to :pit_form_lineitem
  belongs_to :pit_form_datum
  
  has_many :pit_lineitem_values
  
  def name
    return "#{self.pit_form_lineitem.name}-#{self.pit_form_datum.name rescue ""}"
  end
end
