module Mutations
  class UpdateEmployee < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: true
    argument :age, String, required: true
    argument :address, String, required: true
    argument :phone, String, required: true

    field :employee, Types::EmployeeType, null: true
    field :errors, [String], null: false

    def resolve(**args)
      @args = args
      @employee = Employee.find(@args[:id])

      update_employee_data
    end

    private

    def update_employee_data
      @employee.update(name: @args[:name], age: @args[:age], address: @args[:address], phone: @args[:phone])
      if @employee.save
        {
          employee: @employee,
          errors: []
        }
      else
        {
          employee: nil,
          errors: @employee.errors.full_messages
        }
      end
    end
  end
end