class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :phone_code

      t.timestamps
    end
  end
end
