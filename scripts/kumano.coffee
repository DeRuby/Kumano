cron = require('cron').CronJob

osawares = (msg) ->
  ['この熊野に気安く触るなんて、提督も何か勘違いされてるのではなくって？',
    "あら @#{msg.message.user.name }, 熊野に何かご用？",
    "この熊野を呼びまして？",
    "あら @#{msg.message.user.name }, この熊野を呼びまして？",
    "服が汚れたじゃなぁい！",
    "私の髪、梳くってくださる？",
    "ごきげんよう、@#{msg.message.user.name}。",
    "ｵｯ紅茶が冷めてしまいますわよ！！",
    "おさわり禁止ですのよ？",
    "あなたの一族を根絶やしにして差し上げますわ。",
    "鈴谷と買い物に行く用事がありますの。ごめんあそばせ？",
    "神戸生まれの名は伊達じゃございませんことよ？",
    "暁ちゃん、コーヒーをブラックで飲めても、レディーであるとは限らないんですのよ？",
    "神戸元町の事ならこの私にお任せですわ？",
    "真打参上ですわ〜〜〜！",
    "とぉぉ↑おう↓",
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

  robot.hear /かも/i, (msg) -> 
    msg.send "秋津洲「よんだかも？」"

  new cron '00 00 * * * *', () =>
    robot.send {room: "#general"}, hourly()[(new Date()).getHours()]
  , null, true, "Asia/Tokyo"

  robot.hear /jihou/i, (msg) ->
    msg.send msg.random hourly()

hourly = () -> 
  [
    '深夜0時ですわ。',
    '1時よ。お肌に悪いわ…熊野の美貌に対する挑戦なの？',
    '提督？いつまで起きていらっしゃるの？2時よ。',
    '深夜三時ですって！？　ありえませんわ',
    '深夜4時よ。付き合ってられませんわ',
    'もぉーっ...！深夜っていうか...朝5時ですわ！',
    '6時よ。ちゃんと目をお開けなさいな。',
    '7時になりましてよ。提督のおかげで寝不足でしてよ…？',
    '8時ですわ。私の髪、梳くってくださる？',
    'もう9時よ。遅刻でなくって？',
    'あら、今日は何もありませんの？10時ですのに…',
    '11時。仕方ないので付き合ってあげますわ',
    '12時。私(わたくし)、ランチにはサンドイッチを所望しますわ。',
    '提督。私「こんびに」とやらのサンドイッチ初めていただきましたわ。意外にいけるんですのね。あぁ、13時ですわ。',
    '14時ですわ。食事の後は仮眠をとりますの。ではごきげんよう、提督。',
    '15時ね。仮眠の後は勉強も仕事も、艦これも。効率が良くなると言われているわ。',
    '提督、16時ですわ。熱心に何を見てらっしゃいますの？',
    '17時。熊野はエステの予約がありますの。そろそろ失礼させてもらっていいかしら？',
    '18時。私、エステ中でしてよ？提督。遠慮してくださるかしら。',
    '19時ね。あぁ気持ちよかった。あ、提督いらしたの？',
    '提督、20時よ。ローズヒップティーでも一緒にいかがかしら。',
    '21時になりましたわ。遅めのディナーもよろしいんじゃなくて。',
    '22時。私、美容のため仮眠いただきますわ。',
    '23時です、提督。夜はこれから、どうされるのかしら？'
  ]
