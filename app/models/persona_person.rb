class PersonaPerson < ActiveRecord::Base
  belongs_to :persona
  belongs_to :person
end
