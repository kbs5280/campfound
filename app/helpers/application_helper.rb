module ApplicationHelper
    def us_states
      [
        ['Alabama', 'AL'],
        ['Alaska', 'AK'],
        ['Arizona', 'AZ'],
        ['Arkansas', 'AR'],
        ['California', 'CA'],
        ['Colorado', 'CO'],
        ['Connecticut', 'CT'],
        ['Delaware', 'DE'],
        ['District of Columbia', 'DC'],
        ['Florida', 'FL'],
        ['Georgia', 'GA'],
        ['Hawaii', 'HI'],
        ['Idaho', 'ID'],
        ['Illinois', 'IL'],
        ['Indiana', 'IN'],
        ['Iowa', 'IA'],
        ['Kansas', 'KS'],
        ['Kentucky', 'KY'],
        ['Louisiana', 'LA'],
        ['Maine', 'ME'],
        ['Maryland', 'MD'],
        ['Massachusetts', 'MA'],
        ['Michigan', 'MI'],
        ['Minnesota', 'MN'],
        ['Mississippi', 'MS'],
        ['Missouri', 'MO'],
        ['Montana', 'MT'],
        ['Nebraska', 'NE'],
        ['Nevada', 'NV'],
        ['New Hampshire', 'NH'],
        ['New Jersey', 'NJ'],
        ['New Mexico', 'NM'],
        ['New York', 'NY'],
        ['North Carolina', 'NC'],
        ['North Dakota', 'ND'],
        ['Ohio', 'OH'],
        ['Oklahoma', 'OK'],
        ['Oregon', 'OR'],
        ['Pennsylvania', 'PA'],
        ['Puerto Rico', 'PR'],
        ['Rhode Island', 'RI'],
        ['South Carolina', 'SC'],
        ['South Dakota', 'SD'],
        ['Tennessee', 'TN'],
        ['Texas', 'TX'],
        ['Utah', 'UT'],
        ['Vermont', 'VT'],
        ['Virginia', 'VA'],
        ['Washington', 'WA'],
        ['West Virginia', 'WV'],
        ['Wisconsin', 'WI'],
        ['Wyoming', 'WY']
      ]
  end

  def months_of_the_year
    [
      ['October', 'October'],
      ['November', 'November'],
      ['December', 'December'],
      ['January', 'January'],
      ['February', 'February'],
      ['March', 'March'],
      ['April', 'April']      
    ]
  end

  def radius_options
    [
      ['0 miles', 0],
      ['1 mile', 1],
      ['5 miles', 5],
      ["10 miles", 10],
      ['15 miles', 15],
      ['20 miles', 20],
      ['25 miles', 25],
      ['30 miles', 30],
      ['35 miles', 35],
      ['40 miles', 40],
      ['45 miles', 45],
      ['50 miles', 50]
    ]
  end

  def major_cities
    [
      ['Denver, CO', 'Denver, CO'],
      ['New York, NY', 'New York, NY'],
      ['Austin, TX', 'Austin, TX'],
      ['San Diego, CA', 'San Diego, CA'],
      ['Los Angeles, CA', 'Los Angeles, CA'],
      ['San Fransisco, CA', 'San Fransisco, CA'],
      ['Seattle, WA', 'Seattle, WA'],
      ['Phoenix, AZ', 'Phoenix, AZ'],
      ['St. Louis, MO', 'St. Louis, MO'],
      ['Philadelphia, PA', 'Philadelphia, PA'],
      ['Chicago, IL', 'Chicago, IL'],
      ['Miami, FL', 'Miami, FL']
    ]
  end
end
