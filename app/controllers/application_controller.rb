class ApplicationController < ActionController::Base
	before_filter :configure_permitted_parameters, if: :devise_controller?

	private

	def configure_permitted_parameters
		devise_parameters_sanitizer.for(:sig_up) << :username
	end
end
