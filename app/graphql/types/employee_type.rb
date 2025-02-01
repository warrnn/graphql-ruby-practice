module Types
  class Types::EmployeeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: false
    field :address, String, null: false
    field :phone, String, null: false
  end
end