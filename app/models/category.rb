class Category < ActiveRecord::Base
  
  def css_name
    "category-#{name.downcase}"
  end
end
