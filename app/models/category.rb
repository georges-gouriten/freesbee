class Category < ActiveRecord::Base
  
  def css_name
    name.downcase
  end
end
