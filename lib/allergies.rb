class AllergicScore

  ALLERGY_SCORES = {
    1 => "eggs",
    2 => "peanuts",
    4 => "shellfish",
    8 => "strawberries",
    16 => "tomatoes",
    32 => "chocolate",
    64 => "pollen",
    128 => "cats",
  }

    def is_valid?(user_input)
      user_input.to_i < 256 && user_input.to_i > 0 && user_input.match(/\A[0-9]+\z/)
    end

    def get_allergy(score)
      ALLERGY_SCORES.
    end
end
