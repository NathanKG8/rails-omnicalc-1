Rails.application.routes.draw do
  get("/", {:controller => "primary", :action => "newsquare"}) 
  
  get("/square/new", {:controller => "primary", :action => "newsquare"})
 
  get("/square/results", {:controller => "primary", :action => "squareresults"})

  get("/square_root/new", {:controller => "primary", :action => "newroot"}) 

  get("/square_root/results", {:controller => "primary", :action => "rootresults"})

  get("/payment/new", {:controller => "primary", :action => "newpayment"}) 

  get("/payment/results", {:controller => "primary", :action => "paymentresults"}) 

  get("/random/new", {:controller => "primary", :action => "newrandom"}) 

  get("/random/results", {:controller => "primary", :action => "randomresults"}) 
end
