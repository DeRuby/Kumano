var request = require('request');

export default function (robot) {
  robot.respond (/hoge/, (msg) => {
    msg.send ("Test");
  });

  robot.respond (/umu(?: (\S+))?/, (msg) => {
    msg.send(msg.match[1]);

    var url = "http://kanmusu.blomaga.jp";
    request(url,(_, res) => {
      var cheerio = require('cheerio'),
        $ = cheerio.load(res.body);

        var txt = $('a6').first().text();
        console.log(txt);
        msg.send(txt);
    });
  });
};
