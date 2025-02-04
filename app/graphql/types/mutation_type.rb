module Types
  class MutationType < Types::BaseObject
    field :create_employee, mutation: Mutations::CreateEmployee
    field :update_employee, mutation: Mutations::UpdateEmployee
    field :delete_employee, mutation: Mutations::DeleteEmployee
  end
end