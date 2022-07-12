import urllib.request

myAPI = 'D7QHPMYYIBBCRRV6' 

baseURL = 'https://api.thingspeak.com/update?api_key=%s' % myAPI
i=0
r=0
while True:
        i=not(i)
        if i == 0:
            r=0
        else:
            i==1
            r=1	
        state=r
        if isinstance(state, int):
            print("state = ",state)
            conn = urllib.request.urlopen(baseURL + '&field1=%s' % (state))
            print (conn.read())
            conn.close()
        else:
            print( 'Error')
