Participation.delete_all; Project.delete_all; Company.delete_all; User.delete_all; UserType.delete_all

UserType.create(name: 'Institución', code: 'company')
UserType.create(name: 'Especialista', code: 'leader')
UserType.create(name: 'Developer', code: 'dev')

User.create(email: '')
