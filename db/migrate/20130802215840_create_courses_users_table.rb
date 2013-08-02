class CreateCoursesUsersTable < ActiveRecord::Migration
    
        def self.up
            
            create_table :courses_users do |t|
                t.belongs_to :course
                t.belongs_to :user
            end
        end
def self.down
drop_table :courses_users
end
end