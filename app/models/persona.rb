class Persona < ActiveRecord::Base
  has_and_belongs_to_many :interests
end
