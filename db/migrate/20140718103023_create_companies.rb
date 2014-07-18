class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.string :lastname
      t.string :phone
      t.string :phone_code

      t.timestamps
    end
  end
end
