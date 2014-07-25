ActnowApp::Application.routes.draw do
  get("/", { :controller => "pages", :action => "home" })
  get("/how_it_works", { :controller => "pages", :action => "how_it_works" })
  get("/about_us", { :controller => "pages", :action => "about_us" })
end


