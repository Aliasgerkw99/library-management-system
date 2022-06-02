class MessagesController < ApplicationController
  def index
    if admin_signed_in?
      @mes=Message.where(["receiver=? or alladmins=?",current_admin.id,1])
    elsif student_signed_in?
      @mes= Message.where(["receiver=? or allstudents=?",current_student.id,1]) 
    else 

    end
  end
end
