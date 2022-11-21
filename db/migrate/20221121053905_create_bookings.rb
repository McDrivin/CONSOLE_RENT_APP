class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :listing, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :total_price
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
