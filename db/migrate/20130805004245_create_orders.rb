class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
        t.integer :course_id
        t.integer :user_id
        t.date :expires
        t.belongs_to :course
        t.belongs_to :user 

      t.timestamps
    end
  end
end
