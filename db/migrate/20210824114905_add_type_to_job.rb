class AddTypeToJob < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :type, :string
  end
end
