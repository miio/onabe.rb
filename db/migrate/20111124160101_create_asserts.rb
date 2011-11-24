class CreateAsserts < ActiveRecord::Migration
  def change
    create_table :asserts do |t|
      t.integer :event_id
      t.integer :user_id
      t.datetime :date
      t.boolean :flag

      t.timestamps
    end
  end
end
