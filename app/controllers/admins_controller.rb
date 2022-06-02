class AdminsController < ApplicationController
    def index
        @admin=Admin.all  
    end
    def show 
       
    end
    def destroy
        @admin1 = Admin.find(params[:id])
        @admin1.destroy
        redirect_to admins_path, notice: 'User deleted.'
    end
    def edit
        @admin = Admin.find(params[:id])
      end
    
      def update
        @admin = Admin.find(params[:id])
    
        if @admin.update(admin_params)
          redirect_to admins_path
        else
          redirect_to root_path
        end
      end
    private
    

    
    def admin_params
      params.require(:admin).permit( :name, :phone, :email, :password)
    end
end
