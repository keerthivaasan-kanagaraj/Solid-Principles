class EmailSender
    def send_msg(user,message)
        puts "Email sent to #{user}"
    end
end

class SmsSender
    def send_msg(user,message)
        puts "Sms sent to #{user}"
    end
end


class NotificationSender
    def send_msg(user, message,sender_type = EmailSender.new)
        sender_type.send_msg(user, message)
    end
end

ns = NotificationSender.new
ns.send_msg("Jack","Hi")
ns.send_msg("Jack","Hi",SmsSender.new)