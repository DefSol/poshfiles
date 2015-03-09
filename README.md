Powershell Profile
==================

This project is a fork of [scottmuc/poshfiles](https://github.com/scottmuc/poshfiles) - such inspiration.

I plan to evolve this for my needs, so if you like, then fork away. Let me know how you go.

My style of work flow differes from Scott in that I prefer this repo to be outside of the PowerShell profile structure. This allows me to change scripts, perhaps test them mmmmm, before I then release.

~~So my first code commit will be looking at how I can release a version to my PowerShell profile. Something to think about no doubt.~~

~~In the mean time, it will just be manually released, Oh the pain!~~

Once the repo has been cloned you can run deploy.ps1 and this should bootstrap your profile. Reloading your profile should then pimp your profile

Features
--------

- Creates a pretty prompt
- Imports all Script modules whenever powershell is run
- Sets up your $env:Path so all directories in $env:UserProfile\bin are globally available
- Loaded with some utility functions
