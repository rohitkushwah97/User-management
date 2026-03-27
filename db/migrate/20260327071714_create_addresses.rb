class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.string :locality
      t.string :street
      t.references :addressable, polymorphic: true
      t.timestamps
    end
  end
end
