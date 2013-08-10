class AddPurchasedToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :purchased, :boolean
  end
end
