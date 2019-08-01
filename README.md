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

* Create initializer running command above
* Configure `users` table
* Load `users` data via traditional seeds in this app to test dumping

#### Testing Data Dumps

```sh
rake seedster:dump USER_ID=1
```

Now we should see the data file generated locally.

#### Testing Data Loads

* To test loads, reset the database `rake db:reset`
* We should have the data file in the `tmp` dirs
* We can `truncate users, posts, comments` via `psql` to empty the tables out if we've already loaded data

```sh
rake seedster:load
```

We should now have `users` data, running `User.first` in `rails console` should return the User.



