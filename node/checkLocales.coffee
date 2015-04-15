#!/usr/bin/env coffee

fs = require 'fs'
path = require 'path'
async = require 'async'
_ = require 'underscore'
cmd = require 'commander'

cmd.parse process.argv

files = cmd.args
data = []
dataFiles = []

fail = false

# Read and store filename and content
reader = (item, cb) ->
  fs.readFile item, (err, d) ->
    dataFiles.push path.basename item
    data.push d
    cb err, d

# Read each json file
async.map files, reader, (err) ->
  if err
    console.error err
    fail = true
  else
    # Get objects
    objs = data.map JSON.parse
    # Get keys
    keys = objs.map Object.keys

    # Compare each object's keys array to the rest
    keys.forEach (e, i) ->
      keys.forEach (f, j) ->
        # Skip self
        if i isnt j
          diff = _.difference e, f
          # Show diff
          if diff and diff.length > 0
            fail = true
            console.error "Error:\t[#{dataFiles[j]}] doesn't have:"
            console.error "\t\t" + diff.join(",\n\t\t")
            console.error "\t#{diff.length} keys found in [#{dataFiles[i]}]"

  # Something bad found
  if fail
    process.exit 1
  else
    process.exit 0