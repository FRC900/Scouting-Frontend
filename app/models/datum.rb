class Datum < ActiveRecord::Base
  belongs_to :data_type
  belongs_to :form_data
  has_many :data_values
end
