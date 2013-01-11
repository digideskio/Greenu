puts "Destroying all existing markets, if any."
Market.destroy_all
  
markets = [
#   mondays = 
      {:name => "Chicago's Downtown Farmstand", :address => "66 E. Randolph, Chicago, IL", :zipcode => "60601", :linkcard => false, :open_monday => true, :open_tuesday => true, :open_wednesday => true, :open_thursday => true, :open_friday => true, :open_saturday => true, :open_sunday => false}, 
		  # :time =>  "mon-friday" = 11am-7pm, "saturday" = 11am-4pm
      {:name => "Loyola", :address => "6590 N. Sheridan Rd., Chicago, IL", :zipcode => "60626", :linkcard => true, :open_monday => true, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
      # :date => "June 11-Oct. 15, 2012"
      # :time => "June-Sept: 3 - 7 pm; Oct: 2:30 - 6:30 pm"

#   tuesdays = 
      {:name => "Lincoln Square", :address => "4700 N Lincoln Ave, Chicago, IL", :zipcode => "60625", :linkcard => true, :open_monday => false, :open_tuesday => true, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
      # :time => 7 am - 1 pm
		  # :date => June 5-Oct. 30, 2012
		  {:name => "Museum of Contemporary Art/Streeterville", :address => "220 E Chicago Ave Chicago, IL", :zipcode => "60611", :linkcard => false, :open_monday => false, :open_tuesday => true, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false}, 
		  # :date June 5-Oct. 30, 2012
		  #  :time 7 am - 3 pm
		  {:name => "Columbus Park", :address => "Harrison and Central, Columbus Park", :zipcode => "60644", :linkcard => true, :open_monday => false, :open_tuesday => true, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
		  # :date June 26-Oct. 30, 2012
		  # :time 1-7pm
		  {:name => "City Farm Market Stand", :address => "1204 N. Clybourn Ave., Chicago, IL", :zipcode => "60610", :linkcard => false, :open_monday => false, :open_tuesday => true, :open_wednesday => true, :open_thursday => true, :open_friday => true, :open_saturday => false, :open_sunday => false},
		  # :date => July 10-Sept. 28, 2012
		  # :time => 1-5:30

#   wednesdays = 
		  {:name => "Wood Street Farm Stand", :address =>  "5814 S. Wood St., Chicago, IL", :zipcode => "60636", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
          # :date => April 18-Oct. 24, 2012
          # :time => 1-4pm
          {:name => "Green City Market", :address => "2732 North Clark Street #302, Chicago, IL", :zipcode => "60614", :linkcard => true, :open_monday => false, :open_tuesday => true, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
#         # :date => May 5-Oct. 31, 2012
# 		  # :time => 7 am - 1 pm  
	      {:name => "The Wheeler Mansion Market", :address => "2020 S. Calumet, Chicago, IL", :zipcode => "60616", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
# 		  # :time => 4-8pm
#         # :date => "June 6-Oct. 31, 2012"
          {:name => "South Shore", :address => "7054 South Jeffery Boulevard, Chicago, IL", :zipcode => "60649", :linkcard => true,:open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
# 		  # :date => June 6-Oct. 31, 2012
# 		  # :time => 7am-1pm
		  {:name => "Andersonville", :address => "Clark St and Berwyn Ave, Chicago, IL", :zipcode => "60640", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
# 		  # :date => June 13-Oct. 17, 2012
# 		  # :time => June 13-Sept. 5: 3 - 8 pm; Sept. 12-Oct. 17: 3 - 7 pm
		  {:name => "Covenant Bank - North Lawndale", :address => "1111 S. Homan Ave., Chicago, IL", :zipcode => "60624", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
# 		  # :time => 8 am - 1 pm
# 		  # :date => June 13-Oct. 10, 2012
		  {:name => "La Follette Park", :address => "1333 N. Laramie, Chicago, IL", :zipcode => "60651", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
# 		  # :date => June 20-Oct. 24, 2012
# 		  # :time => 1-7pm 
		  {:name => "Pullman", :address => "11100 S. Cottage Grove, Chicago, IL", :zipcode => "60628", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
# 		  # :time => 7 am - 12 pm 
# 		  # :date => July 11-Oct. 31, 2012
		  {:name => "Seaway Bank", :address => "E 87th St & S Langley Ave, Chicago, IL", :zipcode => "60619", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => true, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => false},
# 		  # :time => 9 am - 2 pm 
# 		  # :date => July 25-Sept. 26, 2012

#   thursdays = 
		  {:name => "Daley Plaza", :address => "Washington & Dearborn, Chicago, IL", :zipcode => "60602", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => true, :open_friday => false, :open_saturday => false, :open_sunday => false}, 
# 		  # :date => May 24-Oct. 18, 2012
# 		  # :time => 7 am - 3 pm
		  {:name => "Hyde Park", :address => "53rd Street & Hyde Park Blvd., Chicago, IL", :zipcode => "60615", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => true, :open_friday => false, :open_saturday => false, :open_sunday => false}, 
# 		  # :date => June 7-Oct. 25, 2012
# 		  # :time => 1am-1pm
		  {:name => "Willis Tower", :address => "233 S. Wacker Dr., Chicago, IL", :zipcode => "60606", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => true, :open_friday => false, :open_saturday => false, :open_sunday => false}, 
# 		  # :date => June 14-Oct. 25, 2012
# 		  # :time => 7 am - 3 pm
		  {:name => "Uptown Farmers Market at Weiss", :address => "4646 N. Marine Dr., Chicago, IL", :zipcode => "60640", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => true, :open_friday => false, :open_saturday => false, :open_sunday => false}, 
# 		  # :date => June 21-Oct. 25, 2012
# 		  # :time => 7:30 am - 12:30 pm 
		  {:name => "Austin Town Center", :address => "Lake St. and Central Ave., Chicago, IL", :zipcode => "60637", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => true, :open_friday => false, :open_saturday => false, :open_sunday => false}, 
# 		  # :date => June 28-Oct. 25, 2012
# 		  # :time => 1 - 7 pm

#   fridays =
		  {:name => "The Rowan Tree Garden Society", :address => "501 W. Englewood, Chicago, IL", :zipcode => "60621", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => true, :open_saturday => false, :open_sunday => false},
# 		  # :date => May 18-Nov. 30, 2012
# 		  # :time => 8 am - 4 pm

#   saturdays =
  	     {:name => "61st Street", :address => "6100 S. Blackstone Ave., Chicago, IL", :zipcode => "60637", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},  
# 	     # :date => May 12-Oct. 27, 2012
# 	     # :time => 9 am - 2 pm 
	     {:name => "Division Street", :address => "1200 N Dearborn, Chicago, IL", :zipcode => "60610", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => May 12-Oct. 27, 2012
#        # :time => 7 am - 1 pm 
         {:name => "Lincoln Park", :address => "Armitage Ave & Orchard St., Chicago, IL", :zipcode => "60614", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => May 12-Oct. 27, 2012
#        # :time => 7 am - 1 pm
         {:name => "Eden Place", :address => "4417 S. Stewart Ave., Chicago, IL", :zipcode => "60609", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => May 19-Oct. 20, 2012
# 	     # :time => 8 am - 3 pm 
	     {:name => "The West Humboldt Park Farmers Market and Bazaar", :address => "3601 W. Chicago Ave., Chicago, IL", :zipcode => "60651", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => June 2, July 14, Aug. 11, Sept. 8 & Oct. 13, 2012
# 	     # :time => 10 am - 2 pm
	     {:name => "Edgewater", :address => "N Broadway & W Norwood St, Chicago, IL", :zipcode => "60660", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => June 9 - Oct. 13, 2012
#        # :time => 8 am - 1 pm
         {:name => "Printers Row", :address => "47 W Polk St., Chicago, IL", :zipcode => "60605", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => June 9-Oct. 27, 2012
#        # :time => 7 am - 1 pm 
         {:name => "BridgePort", :address => "35th and Wallace, Chicago, IL", :zipcode => "60616", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => June 16-Oct. 6, 2012
#        # :time => 7 am - 1 pm 
         {:name => "Bronzeville Community Market", :address => "4400 S. Cottage Grove, Chicago, IL", :zipcode => "60653", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
#        # :date => June 16-Oct. 27, 2012  
#        # :time => 8 am - 1 pm
         {:name => "Northcenter", :address => "4100 N. Damen Ave., Chicago, IL", :zipcode => "60602", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
#        # :date => June 16-Oct. 27, 2012
#        # :time => 7am - 1pm
         {:name => "Southport Market", :address => "1420 W. Grace, Chicago, IL", :zipcode => "60613", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
# 	     # :date => June 23-Sept. 8, 2012
#        # :time => 8 am - 2 pm 
         {:name => "Mount Ebenezer Baptist Church", :address => "3555 W. Huron, Chicago, IL", :zipcode => "60624", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => true, :open_sunday => false},
#        # :date => June 30-Oct. 27, 2012
#        # :time => 10 am - 4 pm
#   
#   sundays = 
  	     {:name => "Beverly", :address => "9500 S. Longwood Dr. 95th & Longwood City parking lot, Chicago, IL", :zipcode => "60602", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
#   	 # :date => May 13-Oct. 28, 2012"
#   	 # :time => 7 am - 1 pm
         {:name => "Glenwood Sunday Market", :address => "6950 N. Glenwood, Chicago, IL", :zipcode => "60626", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
#        # :date => June 3-Oct. 28, 2012
#        # :time => 9 am- 3 pm
         {:name => "Logan Square", :address => "N Milwaukee Ave & W Logan Blvd, Chicago, IL", :zipcode => "60647", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
#        # :date => June 3-Oct. 28, 2012
#        # :time => 10 am - 3 pm 
         {:name => "Pilsen Community Market", :address => "1800 S. Halsted St., Chicago, IL", :zipcode => "60608", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
# 	     # :date => June 3-Oct. 28, 2012
#        # :time => 9 am - 3 pm 
         {:name => "Portage Park", :address => "Central & Berteau, Chicago, IL", :zipcode => "60634", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
# 	     # :date => June 3, 17; July 1, 15, 29; Aug. 5, 19; Sept. 16, 30; Oct. 7, 2012  
#        # :time => 10 am - 2 pm
         {:name => "Wicker Park & Bucktown", :address => "Wicker Park Ave & Damen Ave, Chicago, IL", :zipcode => "60622", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
#        # :date => June 3-Oct. 28, 2012
#        # :time => 8 am - 2 pm 
         {:name => "Homegrown Bronzeville", :address => "343-347 E. 51st Street, Chicago, IL", :zipcode => "60615", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
#        # :date => June 10-Oct. 28, 2012
#        # :time => 9am -1 pm
         {:name => "Independence Park", :address => "3945 N. Springfield Ave., Chicago, IL", :zipcode => "60618", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
#        # :date => June 10-Oct. 28, 2012
#        # :time => 9am -1 pm
         {:name => "Healing Temple Church", :address => "4941 W. Chicago Ave., Chicago, IL", :zipcode => "60651", :linkcard => true, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true},
#        # :date => June 24-Oct. 28, 2012
#        # :time => 2 - 6 pm
         {:name => "Jefferson Park Sunday Market", :address => "5216 W. Lawrence Ave., Chicago, IL", :zipcode => "60630", :linkcard => false, :open_monday => false, :open_tuesday => false, :open_wednesday => false, :open_thursday => false, :open_friday => false, :open_saturday => false, :open_sunday => true}
#        # :date => June 24-Oct. 21, 2012
#        # :time => 10 am - 2 pm
         ]
Market.create markets

#        yearround = [{:name => "Chicago's Downtown Farmstand", :address => "66 E. Randolph", :zipcode => "60601", :linkcard => false}] 
