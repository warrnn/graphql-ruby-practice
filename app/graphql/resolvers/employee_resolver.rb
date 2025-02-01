module Resolvers
  class EmployeeResolver < Resolvers::Base
    type [Types::EmployeeType], null: false

    def resolve(**args)
      Employee.all
    end
  end
end