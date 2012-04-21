class Reply < ActiveRecord::Base
  belongs_to :user , :primary_key => 'id', :foreign_key =>'reply_user_id'
end
