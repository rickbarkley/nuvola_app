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

require 'spec_helper'

describe Order do
  pending "add some examples to (or delete) #{__FILE__}"
end
