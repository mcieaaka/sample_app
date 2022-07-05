class ApplicationController < ActionController::Base
    def hello
        render html: "Hello There!"
    end
end
