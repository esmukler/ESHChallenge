class RenameTable < ActiveRecord::Migration
  def change
    rename_table(:purchases, :school_purchases)
  end
end
