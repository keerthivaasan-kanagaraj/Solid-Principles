class EmailSender
    def send_msg(user,message)
        puts "Email sent to #{user}"
    end
end

class NotificationSender
    def send_msg(user, message)
        @sender = EmailSender.new
        @sender.send_msg(user, message)
    end
end

ns = NotificationSender.new
ns.send_msg("Jack","Hi")