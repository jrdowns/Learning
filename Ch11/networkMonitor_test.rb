=begin
This script will check the health and response time of the specified servers
via http request. It will repeat the requests every # seconds until manually
terminated. 

Enhancements to make:
 - benchmark response time of your http call to determine server response time
 - loop through the entire set of production JVM nodes from the list AJ provided
 - make your monitoring program ‘bulletproof’ by handling networking errors such
   as timeouts and disconnects so your program keeps running instead of 
   automatically exiting as soon as a problem is encountered

http://stackoverflow.com/questions/2191632/begin-rescue-and-ensure-in-ruby
=end
require 'net/http'
require 'benchmark'

servers = [["dfwintas1prd",31151],
           ["dfwintas2prd",31151],
           ["dfwintas3prd",31151],
           ["dfwintas4prd",31151],
           ["dfwintas5prd",31151],
           ["dfwintas6prd",31151],
           ["dfwintas7prd",31151],
           ["dfwintas8prd",31151],
           ["dfwintas9prd",31151],
           ["dfwintas10prd",31151],
           ["dfwintas11prd",31151],
           ["dfwintas12prd",31151],
           ["dfwintas13prd",31151],
           ["dfwintas14prd",31151],
           ["dfwintas15prd",31151],
           ["dfwintas16prd",31151]]
           
requests_sent = servers.length
requests_received = 0
requests_errored = 0
response = ""


while true
  servers.each do |current|
    begin
      puts current[0]
      http = Net::HTTP.new(current[0], current[1])
      time = Benchmark.realtime do
               response = http.get('/welcome.htm')
             end
      requests_received += 1
      puts "  Response code:#{response.code}" +
           " message:#{response.message}" +
           " time:#{(time*1000).to_i}ms"
    rescue => err
      requests_errored += 1
      puts "Error: #{err}"
      next
    end
  end

  puts "------------------------------------------"
  puts "Requests" + " Sent: #{requests_sent}" + 
       " Received: #{requests_received}" + 
       " Errored: #{requests_errored}"
  puts "------------------------------------------"
  requests_received = 0
  requests_errored = 0
  sleep 5
end
