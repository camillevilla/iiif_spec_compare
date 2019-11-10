require 'byebug'

# IF IIIF api repo doesn't exit
  # git clone
# ELSE
  # git fetch n' pull


image_api_2 = File.open("./api/source/api/image/2.1/index.md")
lines = image_api.readlines.map(&:chomp)
lines = lines.select {|line| line.include?("#")}
image_api.close

# for v2
# for each line
  # if line starts with a '#'
    # count header level
    # extract title
    # grab markdown URL helper (e.g. {: #image-request-parameters} )
    # throw 'em in a hash

# for v3
  # for each line
    # if line starts with a '#'
      # count header level
      # extract title
      # linkify text (e.g. "4.1. Region" => {: #region})
      # throw 'em in a hash


# for each v2 link, make a best guess match in v3

# Displayayayay ✨ options
  # (A) fetch request for each page and cat out results ???
  # (B) use a command line utility to open browsers for each link
  # (C) compose an HTML page w/ results iframed in??
