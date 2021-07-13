class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :category
      t.string :applying
      t.string :description
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
