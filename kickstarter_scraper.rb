# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  #This just opens a file and reads it into a variable
  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  binding.pry

  # projects: kickstarter.css("li.project.grid_4")
  # titles: project.css("h2.bbcard_name strong a").text
  # image link: project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_blurb").text
end
create_project_hash
