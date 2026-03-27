class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :age
      t.string :phone_number
      t.boolean :activated, default: false
      t.integer :department
      t.string :designation
      t.datetime :joinig_date
      t.integer :status
      t.string :type
      t.string :password_digest
      t.timestamps
    end
  end
end
