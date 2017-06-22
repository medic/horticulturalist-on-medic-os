# Horticulturalist medic-os packages.

TODO
 - Have sentinel package clean up its directories on uninstall (utility func is not implemented).
 - run horticulturalist with own linux user
 - run horticulturalist with own couchdb user
 - implement random password generating (reuse concierge's?)
 - catch errors in couchdb user creation and deletion
 - is the openssl seeding ok on medic-os?
 - consider having concierge create/delete couchdb users...
 - move creating of couchdb users to the install script, not the run script.
 - run sentinel and api with their own users.