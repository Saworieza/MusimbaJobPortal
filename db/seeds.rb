#JobCategries
JobCategory.create(id:1, name: 'Accounting & Auditing')
JobCategory.create(id:2, name: 'Banking & Micro-finance')
JobCategory.create(id:3, name: 'Creatives (Art,Design,Fashion)')
JobCategory.create(id:4, name: 'Education & Training')
JobCategory.create(id:5, name: 'Engineering/Mechanics/Construction')
JobCategory.create(id:6, name: 'Farming & Agriculture')
JobCategory.create(id:7, name: 'Healthcare & Pharmaceutical')
JobCategory.create(id:8, name: 'Human Resources & Recruitment')
JobCategory.create(id:9, name: 'Insurance')
JobCategory.create(id:10, name: 'IT & Telecoms')
JobCategory.create(id:11, name: 'Banking & Micro-finance')
JobCategory.create(id:12, name: 'Legal')
JobCategory.create(id:13, name: 'Marketing, Communications & PR')
JobCategory.create(id:14, name: 'Mining & Natural Resources')
JobCategory.create(id:15, name: 'Education & Training')
JobCategory.create(id:16, name: 'NGO, Community & Social Devt')
JobCategory.create(id:17, name: 'Administration & Office Support')
JobCategory.create(id:18, name: 'Healthcare & Pharmaceutical')
JobCategory.create(id:19, name: 'Project / Programme Management')
JobCategory.create(id:20, name: 'Research, Quality Control/ Quality Assurance')
JobCategory.create(id:21, name: 'Retail')
JobCategory.create(id:22, name: 'Sales/Business Development')
JobCategory.create(id:23, name: 'Security')
JobCategory.create(id:24, name: 'Strategy & Consulting')
JobCategory.create(id:25, name: 'Tourism & Travel')
JobCategory.create(id:26, name: 'Trades & Services')
JobCategory.create(id:27, name: 'Transport , Logistics, Procurement')
JobCategory.create(id:28, name: 'Internships & Volunteering')
JobCategory.create(id:29, name: 'Real Estate')
JobCategory.create(id:30, name: 'Hospitality/Leisure/Travel')


##### COUNTIES ##### 
County.create!(id: 1, name: 'Makueni')

#Constituency
Constituency.create(id:1, name: 'Kibwezi West Constituency', county_id: 1)
#Constituency.create(id:2, name: 'Kilome Constituency', county_id: 1)
#Constituency.create(id:3, name: 'Kaiti Constituency', county_id: 1)
#Constituency.create(id:4, name: 'Makueni Constituency', county_id: 1)
#Constituency.create(id:5, name: 'Mbooni Constituency', county_id: 1)
#Constituency.create(id:6, name: 'Kibwezi East Constituency', county_id: 1)

#Districts
District.create(id:1, name: 'Nzaui', constituency_id: 1)
District.create(id:2, name: 'Makindu', constituency_id: 1)
District.create(id:3, name: 'Kibwezi', constituency_id: 1)

#District.create(id:4, name: 'Mbooni East', constituency_id: 1)
#District.create(id:5, name: 'Makueni', constituency_id: 1)
#District.create(id:6, name: 'Kilungu', constituency_id: 1)
#District.create(id:7, name: 'Mbooni West', constituency_id: 1)
#District.create(id:8, name: 'Mukaa', constituency_id: 1)
#District.create(id:9, name: 'Kathonzweni', constituency_id: 1)

#Division
Division.create(id: 1, name: 'Mbitini', district_id: 1)
Division.create(id: 2, name: 'Nguu', district_id: 1)
Division.create(id: 3, name: 'Makindu', district_id: 2)
Division.create(id: 4, name: 'Kibwezi', district_id: 3)

#wards(no division/ward data provided)
Ward.create(id:1, name: 'Makindu', division_id: 1)
Ward.create(id:2, name: 'Nguumo', division_id: 1)
Ward.create(id:3, name: 'Kikumbulyu North', division_id: 2)
Ward.create(id:4, name: 'Kikumbulyu South', division_id: 2)
Ward.create(id:5, name: ' Nguu/Masumba', division_id: 3)
Ward.create(id:6, name: 'Emali/Mulala', division_id: 4)

#locations (no division/location data provided, so by default equal distribute)
Location.create(id:1, name: 'Makindu', division_id: 2)
Location.create(id:2, name: 'Kiboko', division_id: 4)
Location.create(id:3, name: 'Twaandu', division_id: 2)
Location.create(id:4, name: 'Nguumo', division_id: 3)
Location.create(id:5, name: 'Kikumbulyu', division_id: 1)
Location.create(id:6, name: 'Kikumini', division_id: 2)
Location.create(id:7, name: ' Nguu', division_id: 4)
Location.create(id:8, name: ' Mweini', division_id: 3)
Location.create(id:9, name: ' Wolwa', division_id: 3)
Location.create(id:10, name: ' Mulala', division_id: 4)
Location.create(id:11, name: ' Ngetha', division_id: 3)
Location.create(id:12, name: ' Emali', division_id: 3)

#sublocations - using wards for easy filter
#Location 1 sublocations
Sublocation.create(id:1, name: 'Kai', location_id: 1, ward_id: 1)
Sublocation.create(id:2, name: 'Kiu', location_id: 1, ward_id: 1)
Sublocation.create(id:3, name: 'Manyatta', location_id: 1, ward_id: 1)
Sublocation.create(id:4, name: 'Kisingo', location_id: 1, ward_id: 1)
Sublocation.create(id:5, name: 'Kamboo', location_id: 1, ward_id: 1)
#Location 2 sublocations
Sublocation.create(id:6, name: 'Kyale', location_id: 2, ward_id: 1)
Sublocation.create(id:7, name: 'Kaasuvi', location_id: 2, ward_id: 1)
Sublocation.create(id:8, name: 'Mulili', location_id: 2, ward_id: 1)
#Location 3 sublocations
Sublocation.create(id:9, name: 'Ngakaa', location_id: 3, ward_id: 1)
Sublocation.create(id:10, name: 'Mitendeu', location_id: 3, ward_id: 1)
Sublocation.create(id:11, name: 'Kalii', location_id: 3, ward_id: 1)
#Location 4 sublocations
Sublocation.create(id:12, name: 'Ndovoini', location_id: 4, ward_id: 2)
Sublocation.create(id:13, name: 'Syumile', location_id: 4, ward_id: 2)
Sublocation.create(id:14, name: 'Muuni', location_id: 4, ward_id: 2)
Sublocation.create(id:15, name: 'Kaunguni', location_id: 4, ward_id: 2)
#Location 5 sublocations
Sublocation.create(id:16, name: 'Kathyaka', location_id: 5, ward_id: 3)
Sublocation.create(id:17, name: 'Ngulu', location_id: 5, ward_id: 3)
Sublocation.create(id:18, name: 'Ndetani', location_id: 5, ward_id: 3)

Sublocation.create(id:19, name: 'Mikuyuni', location_id: 5, ward_id: 4)
Sublocation.create(id:20, name: 'Mbui Nzau', location_id: 5, ward_id: 4)
Sublocation.create(id:21, name: 'Kalungu', location_id: 5, ward_id: 4)
Sublocation.create(id:22, name: 'Ngandani', location_id: 5, ward_id: 4)
#Location 6 sublocations
Sublocation.create(id:23, name: 'Kakili', location_id: 6, ward_id: 5)
Sublocation.create(id:24, name: 'Masumba', location_id: 6, ward_id: 5)
Sublocation.create(id:25, name: 'Mii', location_id: 6, ward_id: 5)
Sublocation.create(id:26, name: 'Mithumoni', location_id: 6, ward_id: 5)
Sublocation.create(id:27, name: 'Kikuni', location_id: 5, ward_id: 5)
Sublocation.create(id:28, name: 'Nduguni', location_id: 5, ward_id: 5)
#Location 7 sublocations
Sublocation.create(id:29, name: 'Mukameabeu', location_id: 7, ward_id: 5)
Sublocation.create(id:30, name: 'Masamukye', location_id: 7, ward_id: 5)
Sublocation.create(id:31, name: 'Nthugui', location_id: 7, ward_id: 5)
Sublocation.create(id:32, name: 'Nguu', location_id: 7, ward_id: 5)
Sublocation.create(id:33, name: 'Kanyalilya', location_id: 7, ward_id: 5)
#Location 8 sublocations
Sublocation.create(id:34, name: 'Mweini', location_id: 8, ward_id: 5)
Sublocation.create(id:35, name: 'Vololo', location_id: 8, ward_id: 5)
Sublocation.create(id:36, name: 'Yikivumbu', location_id: 8, ward_id: 5)
#Location 9 sublocations
Sublocation.create(id:37, name: 'Makasa', location_id: 9, ward_id: 5)
Sublocation.create(id:38, name: 'Thithi', location_id: 9, ward_id: 5)
Sublocation.create(id:39, name: 'Wolwa', location_id: 9, ward_id: 5)
#Location 10 sublocations
Sublocation.create(id:40, name: 'Iteta', location_id: 10, ward_id: 6)
Sublocation.create(id:41, name: 'Katune', location_id: 10, ward_id: 6)
Sublocation.create(id:42, name: 'Maatha', location_id: 10, ward_id: 6)
Sublocation.create(id:43, name: 'matiku', location_id: 10, ward_id: 6)
#Location 11 sublocations
Sublocation.create(id:44, name: 'Ngetha', location_id: 11, ward_id: 6)
#Location 12 sublocations
Sublocation.create(id:45, name: 'Emali', location_id: 12, ward_id: 6)
Sublocation.create(id:46, name: 'Kwakakulu', location_id: 12, ward_id: 6)
Sublocation.create(id:47, name: 'Tutini', location_id: 12, ward_id: 6)