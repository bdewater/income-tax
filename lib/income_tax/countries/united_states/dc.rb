module IncomeTax
  module Countries
    class UnitedStates
      class Dc < State
        register "Washington, D.C.", "D.C.", "DC", "District of Columbia"

        standard_deduction = 1675
        level standard_deduction + 0,         "0%"
        level standard_deduction + 10000,     "4%"
        level standard_deduction + 40000,     "6%"
        level standard_deduction + 350000,    "8.5%"
        remainder                             "8.95%"
      end
    end
  end
end
