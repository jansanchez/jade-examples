
# 
# node jade.js > output.html
#

jade         = require('jade')
jadeTemplate = __dirname + '/template.jade'
str          = require('fs').readFileSync(jadeTemplate, 'utf8')
compiledTpl  = jade.compile(str, { filename : jadeTemplate, pretty : true })

usersObject  =
	jan    :
		age: 26
		email: 'joejansanchez@gmail.com'
		isA: 'adult'
	silena :
		age: 4
		email: 'silena@nayrim.com'
		isA: 'children'

htmlOutput   = compiledTpl { users : usersObject }

console.log htmlOutput
