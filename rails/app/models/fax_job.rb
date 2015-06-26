class FaxJob < ActiveRecord::Base
 
  def send_email
   sleep 10
   Rails.logger.debug "Sending email.. #{self[:sender_email]}"
  end

end
