Seedster.configure do |c|
  c.db_host = 'localhost' # DB host. Fill this in, or reference Rails config/development.yml database values or ar-octopus config
  c.db_name = 'rails_with_seedster_development'
  c.db_username = 'root'
  c.db_password = ''

  c.remote_host_path = '' # where the root of the app is deployed on the host

  c.query_params = {user_id: ENV['USER_ID']} # pass in values to interpolate into queries,
                       # e.g. USER_ID=XXX would be {user_id: ENV['USER_ID']}

  c.ssh_user = '' # which user will connect to the host

  c.dump_host = '' # host where app is deployed

  c.skip_download = true

  #
  # Help:
  # Comma-separated list of hashes, with keys `query` and `name`, one hash per DB table
  #
  # Keys:
  # query: the SQL query for the table to be dumped. Add a parameter like `user_id` to be passed in.
  # name: the name of the database table
  #
  c.tables = [
    {
      query: %{SELECT * FROM users WHERE id = '%{user_id}'},
      name: 'users'
    }
  ]
end
