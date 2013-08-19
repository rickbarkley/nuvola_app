class AddChapterToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :chapter, :string
  end
end
