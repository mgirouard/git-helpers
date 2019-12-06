# git-helpers

Day-to-day helpers when interacting with git.

## Build Tags

A build tag blends the best of both worlds of subversion and git. It's a
sequential revision number and a corresponding commit hash.

    $ git buildtag
    3-ea1a022

This is really useful in cases where you need to uniquely identify versions but
also compare them with previously released versions. It provides a unique
identifier for a build but with built-in features for humans. The revision
number affords comparision between builds, specifically when comparing older
against newer. The hash provides a direct link back to the exact commit which
points to the build.

# Cleanup

Cleanup wipes out local branches which are already merged into the current
HEAD.

    $ git cleanup
    Deleted branch mgirouard/it-works (was ea1a022).

Cleanup assumes that `staging` and `master`are special and won't ever delete
them. It also won't delete the currently active branch.

Note: this only works for local branches. This is less of a problem with
graphical merge tools like Bitbucket or GitHub where you can opt-in to having
the topic branch removed after a successful merge.

# Last Touched

Last touched files are files which were affected during the last commit.

    $ git last-touched
    git-versions

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

