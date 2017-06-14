require 'byebug'

class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to sessions_new_path if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to :root
  end

  def destroy
    session.delete :name
    redirect_to sessions_new_path
  end
end
