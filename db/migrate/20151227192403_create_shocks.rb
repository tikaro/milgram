class CreateShocks < ActiveRecord::Migration
  def change
    create_table :shocks do |t|
      t.integer :strength

      t.timestamps null: false
    end
  end
end
