class Form < ActiveRecord::Base
    has_many :categories
    has_many :data_types, :through=>:categories
    has_many :form_data
    belongs_to :competition
end
