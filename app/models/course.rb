# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  cost        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  media_url   :string(255)
#

class Course < ActiveRecord::Base
include AutoHtml

  attr_accessible :cost, :description, :title, :media_url

auto_html_for :Media_url do
html_escape
vimeo
end

validates :title,   	:presence   => true,
                    	:length     => { :maximum => 50 }
validates :description, :presence   => true

validates :cost,	:presence  => true

end
