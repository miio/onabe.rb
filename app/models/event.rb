class Event < ActiveRecord::Base
    belongs_to :user, :class_name => "AdminUser", :foreign_key => "owner"
    #has_many :assert, :class_name => "Assert", :foreign_key => "id"
    #has_one :user, :class_name => "AdminUser", :foreign_key => "id"
end
