module.exports = (robot) ->
  robot.hear /osawari/i, (msg) ->
    osawares = ['この熊野に気安く触るなんて、提督も何か勘違いされてるのではなくって？',
      "あら @#{msg.message.user.nam}, 熊野に何かご用？",
      "よろしくてよ？"]

    msg.send msg.random osawares

  robot.hear /tou/i, (msg) -> 
    msg.send "とぉぉ↑おう↓"
