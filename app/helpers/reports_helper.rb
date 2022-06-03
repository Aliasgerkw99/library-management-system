module ReportsHelper
    def penalty(rdate,sid,bid)
        sqq=Report.find_by(student_id:sid,book_id:bid)
        if sqq.book_status=="Issued"
            currenttime=Time.now.strftime("18-06-2022")
            currenttime=Date.parse(currenttime)
            returndate=rdate
            if returndate.nil?
            
            else
            if returndate >= currenttime
                sqq.update(penalty:0)

            else
                dif=(currenttime-returndate).to_i
                dif=dif*10
                sqq.update(penalty:dif)

            end
        end

        else

        end

    end
end
