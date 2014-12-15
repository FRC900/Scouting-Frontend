class Category < ActiveRecord::Base
  belongs_to :form
  has_many :data_types
end
