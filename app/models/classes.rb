# == Schema Information
#
# Table name: classes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  desription :text
#  preview    :text
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classes < ActiveRecord::Base
  attr_accessible :cost, :desription, :preview, :title

  validates :title,		:presence => true,
	 			:length => { :maximum => 50 }
  validates :desription,	:presence => true
  validates :cost,		:presence => true
end
