class SessionsController < ApplicationController
    
    def new
    end

    def create
        if params[:name] && !params[:name].strip.empty?
            session[:name] = params[:name]
            redirect_to secrets_path(params[:name])
        else
            redirect_to root_path
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
    

end