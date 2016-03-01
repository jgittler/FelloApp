class Founder
  attr_reader :image, :name, :description, :signature, :email

  def initialize(name)
    send(name)
    @name = name.to_s.capitalize
    @image = "#{name}_founder.jpg"
    @signature = "#{name}_sig.png"
  end

  def sasha
    @description = ""
    @email = "sasha@felloeyewear.com"
  end

  def jonathan
    @description = ""
    @email = "jonathan@felloeyewear.com"
  end

  def jason
    @description = ""
    @email = "jason@felloeyewear.com"
  end
end
