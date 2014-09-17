# Description:
#   PittMesh and Meta Mesh memes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   colindean

module.exports = (robot) ->
  
  SECONDS = 1000

  robot.hear /prawns/i, (msg) ->
    msg.send "fookin' prawns!"

  robot.hear /intens/i, (msg) ->
    msg.emote "intensifies"

  robot.hear /shake/i, (msg) ->
    msg.send "Con los terroristas!"
    setTimeout () -> 
      msg.send "And do the Harlem Shake"
    , 14 * SECONDS

  robot.respond /who is your master/i, (msg) ->
    if msg.message.user != process.env.HUBOT_ADMIN_USER
      whoverb = "#{process.env.HUBOT_ADMIN_USER} is"
    else if msg.message.user == process.env.HUBOT_ADMIN_USER
      whoverb = "You are"
    else
      whoverb = "No one is"
    msg.send "#{whoverb} my master, #{msg.message.user}."
