class AddCourseTitleToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :course_title, :string
  end
end
