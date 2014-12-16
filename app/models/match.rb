class Match < ActiveRecord::Base
  belongs_to :competition
   has_many :form_data
   
end
