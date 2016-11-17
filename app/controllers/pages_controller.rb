class PagesController < ApplicationController
	def index
		@lastFourReports = Report.order(id: :desc).limit(4)
	end

	def about
	end

	def contact
	end

	def noticias
		@reports = Report.all
	end

	def rakelita
  		@messages = Message.all
  	end

  	def testimonios
  		@testimonials = Testimonial.all
  	end

  	def admin_panel
  		@reports = Report.all
  		@testimonials = Testimonial.all
  	end
end
