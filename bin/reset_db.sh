#
# Only intended for the development environment!
#
# Usage:
# ./bin/reset_db
#

psql -d rails_with_seedster_development -c "truncate posts,users,comments";
psql -d rails_with_seedster_development -c "ALTER SEQUENCE users_id_seq RESTART WITH 1";
psql -d rails_with_seedster_development -c "ALTER SEQUENCE posts_id_seq RESTART WITH 1";
psql -d rails_with_seedster_development -c "ALTER SEQUENCE comments_id_seq RESTART WITH 1";
