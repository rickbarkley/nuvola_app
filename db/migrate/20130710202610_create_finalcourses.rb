class CreateFinalcourses < ActiveRecord::Migration
  def change
    create_table :finalcourses do |t|
      t.string :title
      t.string :video

      t.timestamps
    end
  end
end
