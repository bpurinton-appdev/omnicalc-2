Rails.application.routes.draw do
  get("/", { :controller => "math", :action => "addition_form" })
  get("/add", { :controller => "math", :action => "addition_form" })
  get("/wizard_add", { :controller => "math", :action => "addition" })
  get("/subtract", { :controller => "math", :action => "subtraction_form" })
  get("/wizard_subtract", { :controller => "math", :action => "subtraction" })
  get("/multiply", { :controller => "math", :action => "multiplication_form" })
  get("/wizard_multiply", { :controller => "math", :action => "multiplication" })
  get("/divide", { :controller => "math", :action => "division_form" })
  get("/wizard_divide", { :controller => "math", :action => "division" })
  get("/street_to_coords/new", { :controller => "apis", :action => "map2coord_form" })
  get("/street_to_coords/result", { :controller => "apis", :action => "map2coord" })
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
