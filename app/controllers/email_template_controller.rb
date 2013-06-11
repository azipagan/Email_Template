class EmailTemplateController < ApplicationController

	include

	def SendTemplate
		@name="Jobline Resources"
		@email="azipagan@gmail.com"

		@template = @EmailTemplate

	end

end
