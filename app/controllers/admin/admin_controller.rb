class Admin::AdminController < ActionController::Base
    include Pagy::Backend
    layout 'admin'
end
