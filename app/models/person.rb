class Person < ActiveRecord::Base
    has_many :persona
    has_many :persona_rol
end
