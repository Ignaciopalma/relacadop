class PagesController < ApplicationController
	def index
		@lastFourReports = Report.order(id: :desc).limit(4)
	end

	def about
	end

	def contact
	end

	def noticias
		@reports = Report.all.paginate(:page => params[:page], :per_page => 2)
	end

	def rakelita
  		@messages = Message.all
  	end

  	def testimonios
  		@testimonials = Testimonial.all.paginate(:page => params[:page], :per_page => 1)
  	end
end
