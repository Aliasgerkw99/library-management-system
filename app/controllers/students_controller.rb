class StudentsController < ApplicationController
    def index
       
    end
    def show 
      @stu=Student.all
    end
    def destroy
      @stu1 = Student.find(params[:id])
      @stu1.destroy
      redirect_to "/students/show", notice: 'student deleted.'
    end
    def edit
      @student = Student.find(params[:id])
    end
  
    def update
      @student = Student.find(params[:id])
  
      if @student.update(student_params)
        redirect_to root_path

      end
    end
   
    private
    def student_params
      params.require(:student).permit( :name, :phone, :email, :password)
    end
  def after_sign_up_path_for(resource)
    root_path # or any other path
  end
  def notification 
  end
  
  protected

  def after_sign_in_path_for(resource)
    session[:id] = current_student.id
    session[:name]=current_student.name
  end
end
