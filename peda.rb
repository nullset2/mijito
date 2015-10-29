# Mijito, tu que estudiaste programacion, programate una peda chida
class Peda

  def initialize n_pomos, n_amigos, time
    @n_pomos = n_pomos
    @n_amigos = n_amigos
    @time = time
  end

  def armar
    if is_wknd?(@time) and @n_pomos > 0 and @n_amigos > 0 # wday = 6 => saturday
      "ya se armo este pex"
    else
      "ya se chingo este pex"
    end
  end

  private
  def is_wknd?(time)
    time.friday? or time.saturday?
  end

end

# Lee las variables desde el comando
args = Hash[ ARGV.join(' ').scan(/--?([^=\s]+)(?:=(\S+))?/) ]

# USAGE
#
# ruby peda.rb --pomos=2 --amigos=7

pomos = args['pomos'].to_i
amigos = args['amigos'].to_i

laPeda = Peda.new(pomos, amigos, Time.now) # depending on system time
puts laPeda.armar