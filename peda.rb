# Mijito, tu que estudiaste programacion, programate una peda chida
class Peda

  def initialize n_pomos, n_amigos, time
    @n_pomos = n_pomos
    @n_amigos = n_amigos
    @time = time
  end
  
  def armar
    if @time.wday == 6 and @n_pomos > 0 and @n_amigos > 0 # wday = 6 => saturday
      "ya se armo este pex"
    else
      "ya se chingo este pex"
    end
  end

end

laPeda = Peda.new(10000, 5, Time.now) # depending on system time
puts laPeda.armar