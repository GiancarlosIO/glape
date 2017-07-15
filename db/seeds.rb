Participation.delete_all; Project.delete_all; Company.delete_all; User.delete_all; UserType.delete_all

UserType.create(name: 'Institución', code: 'company')
UserType.create(name: 'Especialista', code: 'leader')
UserType.create(name: 'Developer', code: 'dev')

u = User.create(email: 'demuna@goreica.org', password: '123123123', user_type: UserType.find_by_code('company'))
puts u.errors.messages
Company.create(user: User.find_by_email('demuna@goreica.org'), name: 'Demuna de Ica')
User.create(email: 'hospital@goreica.org', password: '123123123', user_type: UserType.find_by_code('company'))
Company.create(user: User.find_by_email('hospital@goreica.org'), name: 'Hospital de Ica')
User.create(email: 'colegio@goreica.org', password: '123123123', user_type: UserType.find_by_code('company'))
Company.create(user: User.find_by_email('colegio@goreica.org'), name: 'Colegio de Ica')

dev = UserType.find_by_code('dev')

devs = [
  {email: 'dev1@fis.edu.pe'},
  {email: 'dev2@fis.edu.pe'},
  {email: 'dev3@fis.edu.pe'},
  {email: 'dev4@fis.edu.pe'},
  {email: 'dev5@fis.edu.pe'},
  {email: 'dev6@fis.edu.pe'},
  {email: 'dev7@fis.edu.pe'},
  {email: 'dev8@fis.edu.pe'},
  {email: 'dev9@fis.edu.pe'},
  {email: 'dev10@fis.edu.pe'}
]

devs.each { |user| User.create(email: user[:email], name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '123123123', user_type: dev) }

leader = UserType.find_by_code('leader')

leaders = [
  {email: 'leader1@fis.edu.pe'},
  {email: 'leader2@fis.edu.pe'},
  {email: 'leader3@fis.edu.pe'},
]

leaders.each { |user| User.create(email: user[:email], name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '123123123', user_type: leader) }

Company.all.each { |company| company.projects.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join(' '))}
