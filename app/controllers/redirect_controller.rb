class RedirectController < ApplicationController
  def index
    redirect_to (:action => 'active') if session[:logged_in]
  end
  
  def login
  end
  
  def redirect
    session[:logged_in]=true
    redirect_to '/redirect'
  end
  
  def logout
    session[:logged_in]=nil
    redirect_to :action => 'index'
  end

  def active
  end
end
