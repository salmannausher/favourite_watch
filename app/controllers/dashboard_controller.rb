class DashboardController < ApplicationController
    def index
        @watches = Watch.all
    end
end
