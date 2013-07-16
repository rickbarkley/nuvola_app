class AddMediaUrlToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :media_url, :string
  end
end
