Rails.application.routes.draw do



  # Routes for the Delivery tracker resource:

  # CREATE
  post("/insert_delivery_tracker", { :controller => "delivery_trackers", :action => "create" })
          
  # READ
  get("/delivery_trackers", { :controller => "delivery_trackers", :action => "index" })
  
  get("/delivery_trackers/:path_id", { :controller => "delivery_trackers", :action => "show" })
  
  # UPDATE
  
  post("/modify_delivery_tracker/:path_id", { :controller => "delivery_trackers", :action => "update" })
  
  # DELETE
  get("/delete_delivery_tracker/:path_id", { :controller => "delivery_trackers", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
