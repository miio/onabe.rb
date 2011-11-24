class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.string :site
      t.integer :owner
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
