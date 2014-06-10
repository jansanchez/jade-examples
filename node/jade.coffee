
# 
# node jade.js > output.html
# 
# sudo /usr/local/bin/npm install jade
#

jade         = require('jade')
jadeTemplate = __dirname + '/_template.jade'
str          = require('fs').readFileSync(jadeTemplate, 'utf8')
compiledTpl  = jade.compile(str, { filename : jadeTemplate, pretty : true })

usersObject  =
	jan    :
		age: 27
		email: 'joejansanchez@gmail.com'
		isA: 'man'
	silena :
		age: 4
		email: 'silena@nayrim.com'
		isA: 'woman'

htmlOutput   = compiledTpl { users : usersObject }

console.log htmlOutput
