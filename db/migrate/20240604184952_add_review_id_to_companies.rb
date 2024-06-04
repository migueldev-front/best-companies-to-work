class AddReviewIdToCompanies < ActiveRecord::Migration[7.1]
  def change
    add_column :companies, :review_id, :integer
  end
end
