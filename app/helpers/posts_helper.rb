module PostsHelper
  def randomized_background_image
    images = ["http://res.cloudinary.com/charhagelin/image/upload/v1492827791/wow_pretty_dq4hzv.png", "http://res.cloudinary.com/charhagelin/image/upload/v1492827791/take_money_dvinqc.png", "http://res.cloudinary.com/charhagelin/image/upload/v1492827790/must_have_qd0zga.png"]
    images[rand(images.size)]
  end
end
