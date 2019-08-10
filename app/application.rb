class Application
  @@items = [] 
  
  def call(env)
    resp = Rake::Response.new
    req  = Rake::Request.new(env)
    
    if req.path.match(/items/)
      item = req.parms["item"]
      if items.include?(item)
        item.price
      else
        resp.write "error"
        resp.status = 400
      end
      
    else
      resp.write "Error"
      resp.status = 404
    end
    resp.finish
  end
end
  