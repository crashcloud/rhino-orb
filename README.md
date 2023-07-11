# Rhino Orb

[![CircleCI Build Status](https://circleci.com/gh/crashcloud/rhino-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/crashcloud/rhino-orb) [![CircleCI Orb Version](https://badges.circleci.com/orbs/crashcloud/rhino-orb.svg)](https://circleci.com/developer/orbs/orb/crashcloud/rhino-orb) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/crashcloud/rhino-orb/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

<img align="left" width="256" src="art/logo.png" /> 

_**An Orb build on Windows Server 2022 with Rhino Pre-installed, ready for unit testing.**_

---

## Important Info

You will need to have an environment variable set up in your project or context settings called RHINO_TOKEN. This Orb can only use Core Hour Billing See [thi guide](https://developer.rhino3d.com/guides/compute/core-hour-billing/) .

This Orb is a WIP. And will have some issues. Please bear with and create an issue with any problems you have.

## Resources

[CircleCI Orb Registry Page](https://circleci.com/developer/orbs/orb/crashcloud/rhino-orb) - The official registry page of this orb for all versions, executors, commands, and jobs described.

[CircleCI Orb Docs](https://circleci.com/docs/orb-intro/#section=configuration) - Docs for using, creating, and publishing CircleCI Orbs.

### How to Contribute

We welcome [issues](https://github.com/<organization>/<project-name>/issues) to and [pull requests](https://github.com/<organization>/<project-name>/pulls) against this repository!

### How to Publish An Update
1. Merge pull requests with desired changes to the main branch.
    - For the best experience, squash-and-merge and use [Conventional Commit Messages](https://conventionalcommits.org/).
2. Find the current version of the orb.
    - You can run `circleci orb info <namespace>/<orb-name> | grep "Latest"` to see the current version.
3. Create a [new Release](https://github.com/<organization>/<project-name>/releases/new) on GitHub.
    - Click "Choose a tag" and _create_ a new [semantically versioned](http://semver.org/) tag. (ex: v1.0.0)
      - We will have an opportunity to change this before we publish if needed after the next step.
4.  Click _"+ Auto-generate release notes"_.
    - This will create a summary of all of the merged pull requests since the previous release.
    - If you have used _[Conventional Commit Messages](https://conventionalcommits.org/)_ it will be easy to determine what types of changes were made, allowing you to ensure the correct version tag is being published.
5. Now ensure the version tag selected is semantically accurate based on the changes included.
6. Click _"Publish Release"_.
    - This will push a new tag and trigger your publishing pipeline on CircleCI.
