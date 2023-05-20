class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :corporate_name
      t.string :fantasy_name
      t.string :email
      t.boolean :is_active

      t.timestamps
    end
  end
end
