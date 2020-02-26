# MSSQLDockerRestore

# Warning...

This repo is in pretty active development, with a lot of test stuff going on.  You can generally see the direction of which I'm taking to get this working.  but, as long as this warning statement exists, I don't recommend using this repo.  It'll be cleared up very shortly, with a blog entry that discusses this more and potentially a video.

# Purpose

Docker is a fantastic option for developers who need to quickly bring up a database from a backup.  It's good if you don't have a dedicated SQL instance that you can reach, using OSX/Linux/etc, or just don't want to run MSSQL Developer and deal with starting/stopping services to ensure that you 

# System Requirements

Right now, this is designed to be run on a Linux/Unix based system.  This has been tested on Arch Linux primarily.  This should work on any modern Linux/OSX system.  Docker must be installed prior to this and setup properly for your environment (e.g. in Arch dealing with the sudo part of it, etc). In other words, you should be able to run `docker` and actually get something back. If you don't have the required images already, they'll be downloaded.

MSSQL does have their own set of requirements.  Mainly, you need to deal with the issue regarding memory.  MSSQL is a beast, and takes a good 3Gb of RAM to run.  So if you use OSX and Docker there (which runs in a VM), you need to allocate more RAM to the underlying VM.  For that reason, my personal preference in this area is to have an Arch linux system which my commands can execute into.  See References for some blog posts about it.

# References
