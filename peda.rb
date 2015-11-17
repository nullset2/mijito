# Mijito, tu que estudiaste programacion, programate una peda chida
class Peda

  def initialize n_pomos, n_amigos, time, coppel_card
    @n_pomos = n_pomos
    @n_amigos = n_amigos
    @time = time
    @coppel_card = coppel_card
  end

  def armar
    if @time.wday == 4 and (@n_pomos > 0 or @coppel_card) and @n_amigos > 0 # wday = 4 => thor(thunder man)-sday
      "ya se armo este pex"
    else
      "ya se chingo este pex"
    end
  end

end

laPeda = Peda.new(10000, 5, Time.now, true) # depending on system time
puts laPeda.armar
