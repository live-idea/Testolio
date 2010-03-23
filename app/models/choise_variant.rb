class ChoiseVariant < ActiveRecord::Base
  belongs_to :user_quetion
  belongs_to :answer

end
