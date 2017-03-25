class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :email
      t.string :company
      t.string :type
      t.datetime :date
      t.text :details
      t.timestamps
    end
  end
end
