class PagesController < ApplicationController
	def index
	end

	def about
	end

	def contact
	end

	def rakelita
  		@messages = Message.all
  	end
end
