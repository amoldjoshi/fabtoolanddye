# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
PageContent.find_or_create_by!(slug: "home") do |page|
  page.title1 = "Welcome"
  page.body1 = "Your home page content here."
  page.title2 = "Welcome"
  page.body2 = "Your home page content here."
end

PageContent.find_or_create_by!(slug: "aboutus") do |page|
  page.title1 = "About Us"
  page.body1 = "Your about page content here."
  page.title2 = "About Us"
  page.body2 = "Your about page content here."
end

PageContent.find_or_create_by!(slug: "contact") do |page|
  page.title1 = "Contact Us"
  page.body1 = "Your contact page content here."
  page.title2 = "Contact Us"
  page.body2 = "Your contact page content here."
end