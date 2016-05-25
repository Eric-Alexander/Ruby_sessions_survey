class SurveysController < ApplicationController
    def main
        if !session[:views]
            session[:views] = 0
        end

    end
    def results
        flash_session
        @results = params
        flash[:success] = "You have submitted this form #{session[:views]} times."
        render :results

    end
    def flash_session
        session[:views] = session[:views] + 1
        session[:answer] = params[:survey]
    end


end
