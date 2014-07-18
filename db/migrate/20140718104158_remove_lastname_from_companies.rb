class RemoveLastnameFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :lastname, :string
  end
end
