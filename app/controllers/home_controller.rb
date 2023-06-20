class HomeController < ApplicationController
    def index
    end

    def helper_redirect path
        redirect_to path
    end

    helper_method :helper_redirect
end