module NStock
  class Item < ActiveRecord::Base

  #  belongs_to :owner, class_name: "User" 
   #before_save :set_owner

    #def set_owner
    #  self.owner = Owner.curent_user
    #end

  end
end
