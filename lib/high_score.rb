class HighScore
  def set_high_score(category_score)
     category_score.max_by { |k,v| v}
  end
end