class Competition < ActiveRecord::Base
    has_many :matches
    has_and_belongs_to_many :teams
    has_many :competitions_teams
    
    #Match Form relations
    has_one :competitions_match_form
    has_one :match_form, :through=>:competitions_match_form
    has_many :match_categories, :through=>:match_form
    has_many :match_form_lineitems, :through=>:match_categories
    
    #Match Form Data
    has_many :match_form_data, :through=>:matches
    has_many :match_lineitems, :through=>:match_form_data
    has_many :match_lineitem_values, :through=>:match_lineitems
    
    #Pit Form relations
    has_one :competitions_pit_form
    has_one :pit_form, :through=>:competitions_pit_form
    has_many :pit_categories, :through=>:pit_form
    has_many :pit_form_lineitems, :through=>:pit_categories
    
    #Pit Form Data
    has_many :pit_form_data, :through=>:teams
    has_many :pit_lineitems, :through=>:pit_form_data
    has_many :pit_lineitem_values, :through=>:pit_lineitems
    
    def year_name
      return "#{self.year.year} - #{self.name}"
    end
end
