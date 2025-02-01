class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :age
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
