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
