class RemoveCompanyIdFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :company_id, :integer
  end
end
