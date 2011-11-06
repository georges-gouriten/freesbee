# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(:name => 'Fashion')
Category.create(:name => 'Leisure')
Category.create(:name => 'Electronics')
Category.create(:name => 'Houseware')
Category.create(:name => 'Misc')

@user = User.create(:name => 'Francis Real', :provider => 'facebook', :uid => "1217100528", :email => 'ttt.test@phoreal.tutaktran.com')

# Has data, but doesn't load photos
Offer.create(:photo => 'IMG_0704.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Lamp', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0705.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Green plant', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0706.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 5, :title => 'Pens', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0707.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 2, :title => 'Water flask', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0708.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 5, :title => 'Barrel', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0709.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Water jar', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0710.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Stool', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0711.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Teapot', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0712.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 2, :title => 'SLR', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0713.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Water jar', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0714.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Wine glasses', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0715.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 4, :title => 'Bottle lids', :description => 'Nunc tempor diam vehicula mauris.')
Offer.create(:photo => 'IMG_0716.jpg', :pickup_point => 'La Ruche, Paris', :user => @user, :category_id => 5, :title => 'Box', :description => 'Nunc tempor diam vehicula mauris.')