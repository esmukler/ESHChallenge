class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string    :name, null: false
      t.string    :ben, null: false

      t.timestamps
    end
  end
end
