class Application
  @@items = [] 
  
  def call(env)
    resp = Rake::Response.new
    req  = Rake::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split ("/items/").last
      item= @@items.find{|i| i.name == item_name}
      if items.nill?
        v
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
  