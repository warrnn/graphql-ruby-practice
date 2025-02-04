module Mutations
  class DeleteEmployee < Mutations::BaseMutation
    argument :id, ID, required: true

    field :message, String, null: false
    field :errors, [String], null: false

    def resolve(**args)
      @args = args
      @employee = Employee.find(@args[:id])

      delete_employee_data
    end

    private

    def delete_employee_data
      if @employee.destroy
        {
          message: "Employee deleted successfully",
          errors: []
        }
      else
        {
          message: nil,
          errors: @employee.errors.full_messages
        }
      end
    end
  end
end