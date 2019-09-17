admin = AdminUser.find_or_initialize_by(email: 'admin@example.com')
admin.password = admin.password_confirmation = 'password'
admin.save!
