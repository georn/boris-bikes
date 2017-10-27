# Boris Bikes [![Build Status](https://travis-ci.org/georn/boris-bikes.svg?branch=CI-integration)](https://travis-ci.org/georn/boris-bikes) [![Coverage Status](https://coveralls.io/repos/github/georn/boris-bikes/badge.svg?branch=CI-integration)](https://coveralls.io/github/georn/boris-bikes?branch=CI-integration)
**Week 1 Challenge at Makers Academy**

This is an program that emulates the Boris Bikes (Santander Cycles) system in London.

## User Stories

```
1. As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

2. As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

3. As a member of the public,
So I can return bikes I've hired,
I want to dock my bike at the docking station.

4. As a member of the public,
So I can decide whether to use the docking station,
I want to see a bike that has been docked.

5. As a member of the public,
So I can not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

6. As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

7. As a member of the public,
So that I can reduce the chance of getting a broken bike in the future,
I'd like to report a bike as broken when I return it.

8. As a system maintainer,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

9. As a system maintainer,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to accept broken bikes or working bikes.
```

## Quickstart

Clone the repository and change directory to its folder by using the following command lines

```
git clone git@github.com:georn/boris-bikes.git
cd boris-bikes
```

Then you can run the test using:

```
# Install dependencies
bundle install

# Run the tests (rspec)
rspec
```

## TODO

User Stories task list

- [x] Docking Stations can release Bikes
- [x] Bikes can be check if they are working
- [x] Docking Stations can dock Bikes
- [x] Docked Bikes can be check from the Docking Station  
- [x] Docking Stations do not release bikes when empty
- [x] Docking Stations capacity can be changed
- [ ] Bike can be report as broken
- [x] Docking Station do not release broken bikes
- [x] Docking Station docks broken bikes

## Collaborators

This amazing people collaborated to the code, but by that time I wasn't a good git collaborator. Thus here are some credits.

- [Michael Jacobson](https://github.com/michaelbjacobson)
- [Collin Scally](https://github.com/cdscally)
- [Toby Hasler-Winter](https://github.com/tobywinter)
- [Andrew Clarke](https://github.com/Dino982)
