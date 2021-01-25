## Goal
The goal of this repo is to define pipelines to build once and deploy the same image multiple times

## Pipeline - Build
The build pipeline can build any branch.
The code will be tagged with the build_number of the build job.
The docker image is build with following arguments to be stored in labels:
1. build_number
1. repo
1. branch
1. revision
The output image is tagged with same build_number and pushed to docker repo.

If the branch is 'master' it will automatically trigger deployment on DEV.

## Prepare Build for Environment
Retag image BUILD_NR with latest-ENV
We have to foresee prepare build + deploy

## Pipeline - Deploy
Will deploy latest-ENV

## Improvements
Add Tag to Git Repo when deploying: ex latest-DEV, or DEV-BUILD_NR
This means we have to get revision from image.
We can fetch labels as following
1. `docker inspect -f {{.Config.Labels.GITHUB_BUILD_NR}} jvanhent/node-bulletin-board:latest-DEV`
1. `docker inspect -f {{.Config.Labels.GITHUB_SHA}} jvanhent/node-bulletin-board:24`

---------

## Vue Events Bulletin Board

This is the code for the Vue.js [tutorial on Scotch.io](https://scotch.io/tutorials/build-a-single-page-time-tracking-app-with-vue-js-introduction). In the tutorial we build a events bulletin board application and cover the basics of [Vue](http://vuejs.org/).

## Installation

1. Run `npm install`.
2. Run `node server.js`.
3. Visit [http://localhost:8080](http://localhost:8080).

## RESTful API (contributed by Jason Lam)

1. **Use Node.js & Express for backend server and router.**
2. **RESTful requests towards the server to simulate CRUD on *events* model, instead of local hardcoded ones.**
3. Translated into Traditional Chinese.

## RESTful API written in Go 

If you would like to use a backend written in Go, [thewhitetulip](http://github.com/thewhitetulip) has written on. See [the source code](https://github.com/thewhitetulip/go-vue-events).
 
