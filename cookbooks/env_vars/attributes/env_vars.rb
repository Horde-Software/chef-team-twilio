# Specify environment variables for Unicorn or Passenger here
#
# The example below will tune garbage collection for REE and Ruby 1.9.x and higher 
 
default[:env_vars] = {
  :TWILIO_CALLBACK_HOST=>"twilio.teamdriveaway.com"
}
