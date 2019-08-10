class Application
  @@items = [] 
  
  def call(env)
    resp = Rake::Response.new
    req  = Rake::Request.new(env)
    
    if req.path.match(/items/)
      
    else
      resp.write 
  
  