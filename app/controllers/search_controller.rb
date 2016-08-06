class SearchController < ApplicationController

	def person
		@keywords = params[:search][:keyword]
		@keywords = @keywords.split(",")
		Person.num = @keywords[0]
		@keywords.shift
		Person.name = @keywords
		phoneQuery=""
		Person.num.each do |n|
			phoneQuery += " phone like '%#{n}%' or"
		end
		phoneQuery = phoneQuery[0,phoneQuery.length - 2]
		nameQuery = " and "
		Person.name.each do |nm|
			nameQuery +=" name like '%#{nm}%' or"
		end
		nameQuery = nameQuery[0,nameQuery.length - 2]
		query = phoneQuery + nameQuery
		puts query
		 @contacts = Contact.where(query)
		 puts @contacts
		respond_to do |format|
			format.html { redirect_to :controller=>"search",:action=>"index"}
			format.js
		end		
	end
end
