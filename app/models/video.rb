# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  media_url  :string(255)
#

class Video < ActiveRecord::Base
  attr_accessible :title, :body, :media_url
    belongs_to :course
end
