class Product
  attr_reader :name,
              :original,
              :alternate,
              :original_front,
              :original_angle,
              :alternate_front,
              :alternate_angle,
              :price

  def initialize(model)
    send(model)
    @name = model
  end

  def konvoy
    @original = "Black"
    @alternate = "Tortoise Shell"
    @original_front = "konvoy_front_black.jpg"
    @original_angle = "konvoy_angle_black.jpg"
    @alternate_front = "konvoy_front_tortoise.jpg"
    @alternate_angle = "konvoy_angle_tortoise.jpg"
    @price = "price_2.png"
  end

  def fantom
    @original = "Black"
    @alternate = "Tortoise Shell"
    @original_front = "fantom_front_black.jpg"
    @original_angle = "fantom_angle_black.jpg"
    @alternate_front = "fantom_front_tortoise.jpg"
    @alternate_angle = "fantom_angle_tortoise.jpg"
    @price = "price_1.png"
  end

  def heron
    @original = "Green Lenses"
    @alternate = "Blue Lenses"
    @original_front = "heron_front_green.jpg"
    @original_angle = "heron_angle_green.jpg"
    @alternate_front = "heron_front_blue.jpg"
    @alternate_angle = "heron_angle_blue.jpg"
    @price = "price_1.png"
  end
end
