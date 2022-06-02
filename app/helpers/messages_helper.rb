module MessagesHelper
    def user()
        if admin_signed_in?
            return "From : Student"
        else
            return "From : Admin"
        end
    end
end
