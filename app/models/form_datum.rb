class FormDatum < ActiveRecord::Base
  belongs_to :form
  belongs_to :team
  belongs_to :scouter
  has_many :data
    has_many :data_values, :through=> :data
end
