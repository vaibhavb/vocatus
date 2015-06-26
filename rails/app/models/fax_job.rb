require 'phaxio'

Phaxio.config do |config|
   config.api_key = ENV['PHAXIO_API_KEY']
   config.api_secret = ENV['PHAXIO_API_SECRET']
end

class FaxJob < ActiveRecord::Base
 
  def send_email
   sleep 10
   Rails.logger.debug "Sending email.. #{self[:sender_email]}"
  end

  def send_fax
   Rails.logger.debug "Phaxio API key #{ENV['PHAXIO_API_KEY']}"
   @account = Phaxio.get_account_status
   Rails.logger.debug @account 
  end

end
