class AddCoursesPurchasedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :courses_purchased, :string
  end
end
