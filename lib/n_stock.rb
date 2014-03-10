require "n_stock/engine"

module NStock
	mattr_accessor :user_class, :current_user

    def self.user_class
     @@user_class.constantize
    end

    def self.current_user
     send(@@current_user)
    end

    #def self.destroy_user_session_path
    #	send(@@destroy_user_session_path)
    #end

end
