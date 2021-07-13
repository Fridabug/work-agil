class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :statement
      t.string :logo
      t.string :url
      t.string :email
      t.string :description
      t.string :headquarters

      t.timestamps
    end
  end
end
