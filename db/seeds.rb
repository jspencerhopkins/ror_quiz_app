# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = [ 
	['Andell', 'AJean144'],
	['Jeff', 'palmbeachjeff'],
	['Ivan', 'ivansherman'],
	['Kelly', 'QueVee'],
	['Angela', 'angelabier1'],
	['Joe', 'malkin28025'],
	['Peter', 'peterortiz82'],
	['Spencer', 'jspencerhopkins']
]

students.each do |student|
	User.create(name: student[0], github_acct: student[1])
end