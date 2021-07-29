class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :category
      t.string :applying
      t.text :description
      t.string :status, default: 'paused'
      t.integer :company_id

      t.timestamps
    end
  end
end
