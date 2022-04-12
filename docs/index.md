# Home

## Project Demo

<iframe width="560" height="315" src="https://www.youtube.com/embed/4u8ZT4SDcQY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Team

* Rita Borelli - DevOps
* Victor Li - Software Developer
* Mitchell Rysavy - Team Lead, Backend/Infrastructure Developer
* Kristy Sakano - Software Developer



## Project Status (last updated 2022 April 08)

After a few partner meetings, **we have pivoted to _only_ creating a version of BLIS that runs on a Docker container and can be set up as a cloud service.**

## Partner Organization

Our partner organization is the group of labs using the C4G BLIS tool currently. C4G Basic Laboratory Information System (BLIS) is an open-source system to track patients, specimens, and laboratory results. We are working in collaboration with Dr. Vempala to coordinate communication with country level BLIS coordinators. Individual labs are using the local BLIS tool currently, but some regions have reliable internet and have made requests for an online version of the tool. We aim to work on the following specific needs:

* Provide a way to host BLIS in a persistent, Internet-connected way that is “always on”
* Provide a way to see the data from many labs at once
* Provide an updated FAQ to answer immediate questions regarding BLIS’ operations

## Project Goals

### Main Goal

* Create a version of BLIS that runs in Docker container on a cloud instance
* Provide [documentation](blis_cloud.md) on setting up BLIS on a cloud server
* Update user guide for BLIS to account for the new version

### Achievements

`TODO`

## Feedback and Development

We are awaiting a chance to get input from the stakeholders on their preference, but we will propose some combination of the following options for the feedback loop:

* Milestone check-ins
* Demo sessions via live meetings
* Sync via email channel

We also outline a plan for development, evaluation, and deployment.

* *Development:* we’ll develop new features utilizing version control with a forked version of the repository.
* *Evaluation:* we’ll ask end users a few quantitative questions (how often they would use each new feature, on a scale of 1-5; how easy to
use it was, etc.), as well as solicit qualitative feedback (is there anything they would change to make the new feature easier to use).
* *Deployment:* after new features are ready for deployment, we’ll submit pull requests to the main BLIS repository. We can provide a BLIS
update package for clients to use, if necessary.

Finally, we note an important consideration that affected design choices. Since backwards compatibility is a key feature of BLIS, developing a hybrid server/desktop version is probably not feasible. Given that, we can add a feature to the current version of BLIS that can export and periodically upload data to a central node, which can be designed as a full server-side/cloud application.
