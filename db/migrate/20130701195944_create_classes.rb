class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :title
      t.text :desription
      t.text :preview
      t.integer :cost

      t.timestamps
    end
  end
end
