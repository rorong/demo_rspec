class TotalOccurrencesCalculator
  def self.total_inc_dec(x)
    # Base case: for x <= 0, there's only one number: 0
    return 1 if x <= 0

    # Calculate the number of increasing numbers using combination
    increasing_numbers = combination(9 + x, x)
    
    # Calculate the number of decreasing numbers using combination
    decreasing_numbers = combination(10 + x, x)

    # Adjust the total to avoid double counting
    total = increasing_numbers + decreasing_numbers - 10*x - 1

    total
  end

  private

  # Combination formula for n choose k
  def self.combination(n, k)
    numerator = (n - k + 1..n).reduce(1, :*)
    denominator = (1..k).reduce(1, :*)
    numerator / denominator
  end
end
