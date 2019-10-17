# git-helpers

Day-to-day helpers when interacting with git.

## Build Tags

    $ git buildtag
    3-ea1a022

A build tag blends the best of both worlds of subversion and git. It's a
sequential revision number and a corresponding commit hash.

This is really useful in cases where you need to uniquely identify versions but
also compare them with previously released versions. It provides a unique
identifier for a build but with built-in features for humans. The revision
number affords comparision between builds, specifically when comparing older
against newer. The hash provides a direct link back to the exact commit which
points to the build.

# Cleanup

    $ git cleanup
    Deleted branch mgirouard/it-works (was ea1a022).

Cleanup wipes out branches which are already merged into the current HEAD.

Cleanup assumes that `staging` and `master` are special and won't ever delete
them. It also won't delete the currently active branch.

# Last Touched

    $ git last-touched
    git-versions

Last touched files are files which were affected during the last commit.

# Versions

Versions assumes semver tags and orders them accordingly.

    $ git versions
    v0.0.1
    v0.0.2
    v0.0.3
    v0.0.4
    v0.0.5
    v0.0.6
    v0.0.7
    v0.0.8
    v0.0.9
    v0.0.10

