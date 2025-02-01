module Types
  class QueryType < Types::BaseObject
    field :employees, resolver: Resolvers::EmployeeResolver
  end
end