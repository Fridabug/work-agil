class Company < ApplicationRecord
  has_many :jobs, inverse_of: :company
  has_one_attached :photo
  validates :email, presence: true

  def new?(email)
    @company = Company.new
    [] << Company.all.find_index { |c| c.email == email }
    [].size <= 1
  end
end
