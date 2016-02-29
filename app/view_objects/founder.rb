class Founder
  attr_reader :image, :name, :description, :signature 

  def initialize(name)
    send(name)
    @name = name.to_s.capitalize
    @image = "#{name}_founder.jpg"
    @signature = "#{name}_sig.png"
  end

  def sasha
    @description = ""
  end

  def jonathan
    @description = ""
  end

  def jason
    @description = ""
  end
end