require "active_record"

configure :production, :development do
  db = URI.parse('postgres://localhost/workout')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
    )

  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/workout')

end