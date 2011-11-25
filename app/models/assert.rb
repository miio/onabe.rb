class Assert < ActiveRecord::Base
    belongs_to :event,:class_name => "Event", :foreign_key => "event_id"
    belongs_to :user, :class_name => "AdminUser", :foreign_key => "user_id"
end
