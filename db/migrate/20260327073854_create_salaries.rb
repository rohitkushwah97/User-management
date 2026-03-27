class CreateSalaries < ActiveRecord::Migration[7.1]
  def change
    create_table :salaries do |t|
      t.references :account, foreign_key: true
      t.decimal :base_salary, null: false
      t.decimal :bonus, default: 0
      t.decimal :deduction, default: 0
      t.date :effective_from
      t.timestamps
    end
  end
end
