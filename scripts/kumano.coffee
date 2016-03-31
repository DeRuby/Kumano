osawares = (msg) ->
  ['この熊野に気安く触るなんて、提督も何か勘違いされてるのではなくって？',
    "あら @#{msg.message.user.name }, 熊野に何かご用？",
    "この熊野を呼びまして？",
    "あら @#{msg.message.user.name }, この熊野を呼びまして？",
    "服が汚れたじゃなぁい！",
    "私の髪、梳くってくださる？",
    "ごきげんよう、@#{msg.message.user.name}。",
    "ｵｯ紅茶が覚めてしまいますわよ！！",
    "よろしくてよ？"]

module.exports = (robot) ->
  robot.hear /osawari/i, (msg) ->
    msg.send msg.random osawares(msg)

  robot.hear /tou/i, (msg) -> 
    msg.send "とぉぉ↑おう↓"

  robot.enter (res) ->
    res.send "ごきげんよう、わたくしが重巡、熊野ですわ！"

  robot.leave (res) ->
    res.send "ん…んぅぅ……ふぁぁ…私、ちょっと眠くなってきましたわ。"

  robot.hear /cv/i, (msg) ->
    msg.send 'ブリドカットセーラ恵美'

  robot.hear /熊野/i, (msg) ->
    msg.send msg.random osawares(msg)

  robot.hear /おやすみ/i, (msg) -> 
    msg.send "ん…んぅぅ……ふぁぁ…私、ちょっと眠くなってきましたわ。"
