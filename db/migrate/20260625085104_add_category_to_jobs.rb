class AddCategoryToJobs < ActiveRecord::Migration[8.1]
  def change
    add_column :jobs, :category, :string
  end
end
