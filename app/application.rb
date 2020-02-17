class Application
  @@items = []
  def call 
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
  end 
  
end 