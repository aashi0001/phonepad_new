class IndexController < ApplicationController
  layout'application'
  def view
  	Person.reset_static_variables
  	 

  end
end
