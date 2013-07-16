# == Schema Information
#
# Table name: finalcourses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  video      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Finalcourse < ActiveRecord::Base
  attr_accessible :title, :video
    
end
