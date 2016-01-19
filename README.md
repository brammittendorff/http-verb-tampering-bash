# http-verb-tampering-bash
To show how http verb tampering works


There is a challenge at root-me.org:
```bash
http://www.root-me.org/en/Challenges/Web-Server/HTTP-verb-tampering
```

And so I created a script that automaticly generates requests to crack the case at root-me.org and show how verb tampering works.
```bash
/bin/bash tampering.sh challenge01.root-me.org /web-serveur/ch8/ 80
```

Usage:
```bash
Usage: /bin/bash tampering.sh HOST PATH PORT
```

When you execute the generated commands you will see different data as the GET request. The rest is up to you.

OWASP:
https://www.owasp.org/index.php/Testing_for_HTTP_Verb_Tampering_(OTG-INPVAL-003)
