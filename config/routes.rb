ActnowApp::Application.routes.draw do
  # Routes for the Signature resource:
  # CREATE
  get('/signatures/new', { :controller => 'signatures', :action => 'new' })
  get('/create_signature', { :controller => 'signatures', :action => 'create' })

  # READ
  get('/signatures', { :controller => 'signatures', :action => 'index' })
  get('/signatures/:id', { :controller => 'signatures', :action => 'show' })

  # UPDATE
  get('/signatures/:id/edit', { :controller => 'signatures', :action => 'edit' })
  get('/update_signature/:id', { :controller => 'signatures', :action => 'update' })

  # DELETE
  get('/delete_signature/:id', { :controller => 'signatures', :action => 'destroy' })
  #------------------------------

  # Routes for the Petition resource:
  # CREATE
  get('/petitions/new', { :controller => 'petitions', :action => 'new' })
  get('/create_petition', { :controller => 'petitions', :action => 'create' })

  # READ
  get('/petitions', { :controller => 'petitions', :action => 'index' })
  get('/petitions/:id', { :controller => 'petitions', :action => 'show' })

  # UPDATE
  get('/petitions/:id/edit', { :controller => 'petitions', :action => 'edit' })
  get('/update_petition/:id', { :controller => 'petitions', :action => 'update' })

  # DELETE
  get('/delete_petition/:id', { :controller => 'petitions', :action => 'destroy' })
  #------------------------------

  get("/", { :controller => "pages", :action => "home" })
  get("/latest_investigations", { :controller => "signatures", :action => "new" })
  get("/how_it_works", { :controller => "pages", :action => "how_it_works" })
  get("/about_us", { :controller => "pages", :action => "about_us" })
  get("/contact_us", { :controller => "pages", :action => "contact_us" })
end


