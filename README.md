# Horticulturalist medic-os packages.

## TODO
 - Have sentinel package clean up its directories on uninstall (utility func is not implemented).
 - catch errors in couchdb user creation and deletion
 - run sentinel and api with their own couchdb users.
 - convert in-core 'todo' labels to upper-case 'TODO'
 - remove medic-api and medic-sentinel system users on uninstall

# Installing Horticulturalist on MedicOS

Check out this repo.

If you want to update the actual version of Horti, use `git submodule` to locate and update the horti release.

`make` builds the packages and puts them in `output/packages`.

Use eg `scp` to push `output/packages/*` up to the desired server. It doesn't matter where they go, you are just going to refer to them below (ie your home directory is fine).

Then:
```
svc-stop gardnerer
svc-disable gardener # Do I also need to stop???
package-install medic-api...
svc-stop medic-api
package-install medic-sentinel...
svc-stop medic-sentinel
package-install medic-horti...
package-remove gardener
```

Note the `svc-stop` for just installed packages: currently install also starts, and we don't want that noise right now.

Once that has all been completed Webapp should be back up, and you should be able to confirm that horticulturalist is running it by going to https://yourserver/medic/_design/medic/_rewrite/#/configuration/upgrade and noting that the horti upgrade page loads.

Extra credit:
 - Delete dashboard
