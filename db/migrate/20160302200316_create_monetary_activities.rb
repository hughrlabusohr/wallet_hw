class CreateMonetaryActivities < ActiveRecord::Migration
  def change
    create_table :monetary_activities do |t|
      t.date :spent_on
      t.string :name
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
