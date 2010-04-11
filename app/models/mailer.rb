class Mailer < ActionMailer::Base
  def new_test(test)
     recipients "silenzio@ukr.net"
     from       "sanbon@yandex.ru"
     subject    "New test added"
     body[:test] = test
   end
end
