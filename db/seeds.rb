ActiveRecord::Base.transaction do
  User.destroy_all
  Catalog.destroy_all

  User.create!(
    email:                 'admin@dabliu.com',
    password:              'dabliu1234',
    password_confirmation: 'dabliu1234'
  )

  %w(home boxers slips).each do |name|
    Catalog.create!(name: name)
  end
end
