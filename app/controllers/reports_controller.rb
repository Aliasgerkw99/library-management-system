class ReportsController < ApplicationController
    
    def new
        isd=Time.now.strftime("%d-%m-%Y")
        rd=Time.now+14.days
        rdt=rd.strftime("%d-%m-%Y")
        ist=Time.now.strftime("%H:%M")
        @report=Report.create!(book_status:"Requested",reqdate:isd,issue_date:"-",return_date:"-",penalty:0,book_id:params[:bid],student_id:current_student.id)

        @mes=Message.create!(sender:current_student.id,receiver:0,content:"Requested for a book",mdate:isd,mtime:ist,allstudents:0,alladmins:1)
        redirect_to books_path 
    end
    def show 
        @rep=Report.all
    end
    def edit
         
        up=Report.find_by(student_id:params[:sid],book_id:params[:bid])
        if(params[:bstatus]=="Requested")
            up.update(book_status:"Issued")
            isdate=Time.now.strftime("%d-%m-%Y")
            rtd=Time.now+14.days
            ist=Time.now.strftime("%H:%M")
            rtdate=rtd.strftime("%d-%m-%Y")
            up.update(issue_date:isdate,return_date:rtdate)
            @mes=Message.create!(sender:current_admin.id,receiver:params[:sid],content:"Book Issued by Admin",mdate:isdate,mtime:ist,allstudents:0,alladmins:0)
            AdminMailer.record_created.deliver_now 
            redirect_to '/reports/show'
        elsif(params[:bstatus]=="Issued")
            inc=Book.find_by(id:params[:bid].to_i)
            
            
        
            inc.update(issued_quantity:inc.issued_quantity)
            up.update(book_status:"Return")
            @mes=Message.create!(sender:current_admin.id,receiver:params[:sid],content:"Book received",mdate:isdate,mtime:ist,allstudents:0,alladmins:0)
            redirect_to '/reports/show'
            
        else 
            up.update(book_status:"-")
            redirect_to '/reports/show'
        end    
    end
end
