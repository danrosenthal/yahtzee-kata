class Chance
  def score(roll)
    if roll.empty?
      0
    else
      roll.reduce(&:+)
    end
  end
end