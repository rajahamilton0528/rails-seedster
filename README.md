# Rails App With Seedster

### Initializer

Running `rails g` should show:

```sh
Seedster:
  seedster:initializer
```

This can be run with `rails g seedster:initializer`

#### Rake Tasks

```sh
$ rake -T seedster
rake seedster:dump  # Dump application seed data to a data dump file
rake seedster:load  # Load application seed data from a remote dump file
```

## Testing The Flow

Even thought the intention is to create data dumps in production, we can create a dump locally for testing purposes.

#### Set Up

* Create the Seedster initializer file by running the command above
* Configure the `users` table in the Seedster tables configuration, e.g. `%{SELECT * FROM users WHERE id = '%{user_id}'}`
* Populate the database, for example by using the Rails seeds, `rake db:seed`

Now we can run the data dump task.

#### Testing Data Dumps

```sh
rake seedster:dump USER_ID=1
```

The users data file should have been generated.

#### Testing Data Loads

* To test loads, reset the database: `rake db:reset`
* We should have the data file in the `tmp` dirs.
* We can `truncate users, posts, comments` via `psql` to empty the tables out if we've already loaded data
* Seedster can be configured to load from local files, without trying to download. In the Seedster initializer file, set the option `skip_download` to `true`.

Now the load task can be run to load from the local data files.

```sh
rake seedster:load
```

We should now have `users` data, running `User.first` in `rails console` should return the User.



