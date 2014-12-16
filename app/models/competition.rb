class Competition < ActiveRecord::Base
    has_many :matches
    has_many :forms
    has_many :form_data, :through=>:matches
    has_and_belongs_to_many :teams
    has_many :competitions_teams
end
