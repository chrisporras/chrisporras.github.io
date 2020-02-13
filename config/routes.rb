Rails.application.routes.draw do

  get("square/new", {:controller => "application", :action => "render_square"})
  get("square/results", {:controller => "application", :action => "query_square"})

  get("square_root/new", {:controller => "application", :action => "render_square_root"})
  get("square_root/results", {:controller => "application", :action => "query_square_root"})

  get("payment/new", {:controller => "application", :action => "render_payment"})
  get("payment/results", {:controller => "application", :action => "query_payment"})

  get("random/new", {:controller => "application", :action => "render_random"})
  get("random/results", {:controller => "application", :action => "query_random"})


end
