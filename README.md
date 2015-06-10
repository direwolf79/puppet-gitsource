# puppet-gitsource

[![Puppet Forge](http://img.shields.io/puppetforge/v/neillturner/gitsource.svg)](https://forge.puppetlabs.com/neillturner/gitsource) 

## Description

Install git from source to get newer versions

## Installation

`puppet module install --modulepath /path/to/puppet/modules neillturner-gitsource`

`or add to Puppetfile:   mod "neillturner/gitsource"`

## Usage

       class { 'gitsource' :
         version => '2.1.4'
       }

## Parameters

  version   -    version of gitsource to build from https://www.kernel.org/pub/software/scm/git
