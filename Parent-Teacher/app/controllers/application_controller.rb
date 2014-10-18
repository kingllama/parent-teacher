class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def index
    render layout: layout_name
end

private

def layout_name
    if params[:layout] == 0
        false
    else
        'application'
    end
end


end
