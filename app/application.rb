class Application
  @@items = []
  def call 
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
 
      item_path = req.path.split("/items/").last
      song = @@songs.find{|s| s.title == song_title}
 
      resp.write song.artist
    end
 
    resp.finish
  end 
  
end 