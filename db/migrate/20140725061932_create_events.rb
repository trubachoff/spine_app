class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :comment
      t.string :kind
      t.string :status
      t.references :user, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
