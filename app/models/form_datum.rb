class FormDatum < ActiveRecord::Base
  belongs_to :form
  belongs_to :team
  belongs_to :scouter
  belongs_to :match
    has_many :data
    has_many :data_values, :through=> :data
end
