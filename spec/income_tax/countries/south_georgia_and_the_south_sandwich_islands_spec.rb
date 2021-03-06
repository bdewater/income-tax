describe IncomeTax::Countries::SouthGeorgiaAndTheSouthSandwichIslands do
  subject(:result) { described_class.new(income: income, income_type: type, tax_year: tax_year) }
  let(:type) { :gross }

  describe "from gross income of 0" do
    let(:tax_year)     { 2015                                      }
    let(:income)       { 0                                         }
    its(:rate)         { should be == Rational(0, 1)               }
    its(:gross_income) { should be == 0                            }
    its(:net_income)   { should be == 0                            }
    its(:taxes)        { should be == 0                            }
  end

  describe "from gross income of 1000" do
    let(:tax_year)     { 2015                                      }
    let(:income)       { 1000                                      }
    its(:rate)         { should be == Rational(1, 5)               }
    its(:gross_income) { should be == 1000                         }
    its(:net_income)   { should be == 800                          }
    its(:taxes)        { should be == 200                          }
  end

  describe "from gross income of 10000" do
    let(:tax_year)     { 2015                                      }
    let(:income)       { 10000                                     }
    its(:rate)         { should be == Rational(1, 5)               }
    its(:gross_income) { should be == 10000                        }
    its(:net_income)   { should be == 8000                         }
    its(:taxes)        { should be == 2000                         }
  end

  describe "from gross income of 100000" do
    let(:tax_year)     { 2015                                      }
    let(:income)       { 100000                                    }
    its(:rate)         { should be == Rational(145, 431)           }
    its(:gross_income) { should be == 100000                       }
    its(:net_income)   { should be == 66357                        }
    its(:taxes)        { should be == 33643                        }
  end

  describe "from gross income of 100000000" do
    let(:tax_year)     { 2015                                      }
    let(:income)       { 100000000                                 }
    its(:rate)         { should be == Rational(157, 349)           }
    its(:gross_income) { should be == 100000000                    }
    its(:net_income)   { should be == 55013857                     }
    its(:taxes)        { should be == 44986143                     }
  end

  describe "from net income of 0" do
    let(:type)         { :net                                      }
    let(:tax_year)     { 2015                                      }
    let(:income)       { 0                                         }
    its(:rate)         { should be == Rational(0, 1)               }
    its(:gross_income) { should be == 0                            }
    its(:net_income)   { should be == 0                            }
    its(:taxes)        { should be == 0                            }
  end

  describe "from net income of 1000" do
    let(:type)         { :net                                      }
    let(:tax_year)     { 2015                                      }
    let(:income)       { 1000                                      }
    its(:rate)         { should be == Rational(1, 5)               }
    its(:gross_income) { should be == 1250                         }
    its(:net_income)   { should be == 1000                         }
    its(:taxes)        { should be == 250                          }
  end

  describe "from net income of 10000" do
    let(:type)         { :net                                      }
    let(:tax_year)     { 2015                                      }
    let(:income)       { 10000                                     }
    its(:rate)         { should be == Rational(1, 5)               }
    its(:gross_income) { should be == 12500                        }
    its(:net_income)   { should be == 10000                        }
    its(:taxes)        { should be == 2500                         }
  end

  describe "from net income of 100000" do
    let(:type)         { :net                                      }
    let(:tax_year)     { 2015                                      }
    let(:income)       { 100000                                    }
    its(:rate)         { should be == Rational(171, 473)           }
    its(:gross_income) { should be == "156623.636363636364".to_d   }
    its(:net_income)   { should be == 100000                       }
    its(:taxes)        { should be == "56623.636363636364".to_d    }
  end

  describe "from net income of 100000000" do
    let(:type)         { :net                                      }
    let(:tax_year)     { 2015                                      }
    let(:income)       { 100000000                                 }
    its(:rate)         { should be == Rational(265, 589)           }
    its(:gross_income) { should be == "181792987.272727272".to_d   }
    its(:net_income)   { should be == 100000000                    }
    its(:taxes)        { should be == "81792987.272727273".to_d    }
  end
end
