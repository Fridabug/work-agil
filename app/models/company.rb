class Company < ApplicationRecord
  has_many :jobs
  has_one_attached :photo
  accepts_nested_attributes_for :jobs, reject_if: :all_blank

  def new?(email)
    @company = Company.new
    [] << Company.all.find_index { |c| c.email == email }
    [].size <= 1
  end
end
