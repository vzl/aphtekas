# encoding: utf-8

require 'nokogiri'
require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")

namespace :aphtekas do

require 'open-uri'

    desc "parse data from site"
    task(:parse_category => :environment) do
	puts '--begin'
a = CategoryProduct.find(1)
puts  a[:name]			
	puts '--begin2'	
	# parse url of category 
	# populate all data to array
	# find count of categories in db
	# if count parsed categories != count in db's - insert new categories

	category_page = Nokogiri::HTML.parse(open("http://mozdocs.kiev.ua/liki.php?nav=3"), nil, 'windows-1251')

	parsed_categories = category_page.css('td[width="65%"] ul.ul-menu > li > a')

	parsed_categories.each do |data|

#		CategoryProduct.create!(name: data.text, url: data["href"])
#a = CategoryProduct.create!(name: 'test001', url: 'test002')
#a.save
a = CategoryProduct.find(1)
puts  a[:name]			
#		puts data["href"]
#		puts data.text
	end


	
#	CategoryProduct.create!(name: 'test001', url: 'test002')

	puts '--end'	
    end
end


