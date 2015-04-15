class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string     :ben, null: false
      t.integer    :bandwidth, null: false
      t.string     :measure, null: false
      t.integer    :cost, null: false

      t.timestamps
    end
  end
end
