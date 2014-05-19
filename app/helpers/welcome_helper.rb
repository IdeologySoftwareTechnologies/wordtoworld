module WelcomeHelper
	def header 
		   render(partial: 'layouts/header')
	end

	def footer
		 render(partial: 'layouts/footer')
	end
end
