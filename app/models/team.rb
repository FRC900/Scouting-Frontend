class Team < ActiveRecord::Base
    has_and_belongs_to_many :competitions
    has_many :competitions_teams
    has_many :match_forms, :through=>:competitions
    has_many :pit_forms, :through=>:competitions
    
    #match form
    has_many :match_categories, :through=>:match_forms
    has_many :match_form_lineitems, :through=>:match_categories
    
    #match data
    has_many :match_form_data, :through=>:match_forms
    has_many :match_lineitems, :through=>:match_form_data
    has_many :match_lineitem_values, :through=>:match_lineitems
    
    #match form
    has_many :pit_categories, :through=>:pit_forms
    has_many :pit_form_lineitems, :through=>:pit_categories
    
    #match data
    has_many :pit_form_data, :through=>:pit_forms
    has_many :pit_lineitems, :through=>:pit_form_data
    has_many :pit_lineitem_values, :through=>:pit_lineitems
    
    def full_name
      return "#{self.number} - #{self.name}"
    end
end
