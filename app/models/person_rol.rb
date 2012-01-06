class PersonRol < ActiveRecord::Base
  belongs_to :person
  belongs_to :rol
end
