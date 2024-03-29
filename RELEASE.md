# Release

When you are ready to release a new version, follow these steps:

1.  Bump up the [VERSION](VERSION)

1.  Update [CHANGELOG.md](CHANGELOG.md)

    * Replace the \[Unreleased\] with the version number.
    * Add current date to version number line.
    * Add a new \[Unreleased\] version.
    * Add a git diff link to the end of the file, and update the `unreleased` diff link.

1.  Update [UPGRADE.md](UPGRADE.md)

    * See if there are any upgrade notes. If not, you can move to next step.
    * Replace the \[Unreleased\] with the correct version number.
    * Add a new \[Unreleased\] version

1.  Commit the changes

1.  Add a new tag

    ```bash
    git tag -a v1.2.3 -m v1.2.3
    ```

1.  Update `latest` tag

    ```bash
    git push origin :refs/tags/latest
    git tag -f -a latest -m latest
    ```
	
1.  Push the tags to the private Go repository:

    ```bash
    git push origin refs/tags/v1.2.3
    git push -f origin refs/tags/latest
    ```
    
1.  Make sure you have a Git remote for the public Go repository:

    ```bash
    $ git remote -v
    origin    git@github.com:Ava/go.git (fetch)
    origin    git@github.com:Ava/go.git (push)
    public    git@github.com:Ava/Ava.git (fetch)
    public    git@github.com:Ava/Ava.git (push)
    ```
    
    If not, add one:
    
    ```bash
    git remote add public git@github.com:Ava/Ava.git
    ```

1.  Push the tags to the public Go repository:

    ```bash
    git push public refs/tags/v1.2.3
    git push -f public refs/tags/latest
    ```

1.  Go to [Github releases and draft a new release](https://github.com/Ava/sharetribe/releases/new)

    Use the following content:

    **Tag version:** \<the newly created tag\>

    **Release title:** \<version number\>

    **Describe this release:**

    ```markdown
    <copy the content from the [CHANGELOG.md](CHANGELOG.md)>
    <copy the content from the [UPGRADE.md](UPGRADE.md)>
    ```

    Here's a full example:

    **Tag version:** v5.0.0

    **Release title:** v5.0.0

    **Describe this release:**

    ```markdown
    ### Changed

    - Rails upgraded from 3.2 to 4.0

    ## Upgrade from 4.6.0 to 5.0.0

    After you have deployed the new version you need to clear Rails cache by running to following command in your production application Rails console:
    ```

1.  Announce the new version at the [Community Forum](https://www.sharetribe.com/community/c/announcements)
