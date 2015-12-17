begin
  http = Net::HTTP.new(dfwintas99prd, 31151)
    time = Benchmark.realtime do
             response = http.get('/welcome.htm')
           end
  http = Net::HTTP.new(dfwintas12prd, 31151)
      time = Benchmark.realtime do
               response = http.get('/welcome.htm')
             end
rescue
  next
end