# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  user_id    :integer
#  expires    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  # attr_accessible :title, :body
    belongs_to :course
    belongs_to :user
end
