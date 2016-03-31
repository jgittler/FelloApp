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
    @original_front = "konvoy_black_front.png"
    @original_angle = "konvoy_black_angle.png"
    @alternate_front = "konvoy_tortoise_front.png"
    @alternate_angle = "konvoy_tortoise_angle.png"
    @price = "$91"
  end

  def fantom
    @original = "Black"
    @alternate = "Tortoise Shell"
    @original_front = "fantom_black_front.png"
    @original_angle = "fantom_black_angle.png"
    @alternate_front = "fantom_tortoise_front.png"
    @alternate_angle = "fantom_tortoise_angle.png"
    @price = "$88"
  end

  def heron
    @original = "Dark Lenses"
    @alternate = "Blue Lenses"
    @original_front = "heron_green_front.png"
    @original_angle = "heron_green_angle.png"
    @alternate_front = "heron_blue_front.png"
    @alternate_angle = "heron_blue_angle.png"
    @price = "$88"
  end
end
