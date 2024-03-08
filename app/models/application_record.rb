class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  # In order to convert from any unit of measure to the other, we need a common "root" conversion factor. We'll use
  # meters as the common factor here for simplicity, converting every entry from whatever to meters, then from meters
  # to the other output unit. So to start that we need a table:
  CONVERSION_TABLE = {
    meters: {
      acres: 0.000247105,
      miles: 0.000621371,
      feet: 3.28084,
      hectares: 0.0001,
      yards: 1.09361
    },
    acres: {
      meters: 4046.856422,
      miles: 0.0015625,
      feet: 43560,
      hectares: 0.404686,
      yards: 4840
    },
    miles: {
      meters: 1609.344,
      acres: 640,
      feet: 5280,
      hectares: 259,
      yards: 1760
    },
    feet: {
      meters: 0.3048,
      acres: 2.29568e-5,
      miles: 1.89394e-4,
      hectares: 9.2903e-6,
      yards: 0.333333
    },
    hectares: {
      meters: 10000,
      acres: 2.47105,
      miles: 0.00386102,
      feet: 107639,
      yards: 11959.9
    },
    yards: {
      meters: 0.9144,
      acres: 0.000206612,
      miles: 0.000568182,
      feet: 3,
      hectares: 8.36127e-5
    },
    kilometers: {
      meters: 1000,
      acres: 247.105,
      miles: 0.621371,
      feet: 3280.84,
      hectares: 100
    }
  }
end
