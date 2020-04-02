class WelcomeController < ApplicationController
    before_action :if_logged_in

    def home

    end
end
