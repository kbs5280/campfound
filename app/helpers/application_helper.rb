module ApplicationHelper
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
