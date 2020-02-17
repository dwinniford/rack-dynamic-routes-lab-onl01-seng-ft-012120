class Application
  @@items = []
  def call 
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
 
      item_name = req.path.split("/items/").last
      song = @@items.find{|i| i.title == song_title}
 
      resp.write song.artist
    end
 
    resp.finish
  end 
  
end 