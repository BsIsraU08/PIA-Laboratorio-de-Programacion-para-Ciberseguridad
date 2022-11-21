#Jesús Israel Bolaños Uvalle
#2005587

import requests # Va hacer el request a la pagina web
import base64 # Para Encode/decode en base 64
from requests import Response
#
## Para descargar la imagen del sitio
#
if __name__ == '__main__':
	url = 'https://imgur.com/gallery/CQPXu5l.jpeg'

	Response: Response =requests.get(url, stream=True)
	with open('stones.jpg','wb') as file_down:
		for chunk in Response.iter_content(): #Descargando contenido poco a poco
			file_down.write(chunk)
	Response.close()
#
## Para cofidicar la imagen
#
with open('stones.jpg','rb') as binary_file:
	binary_file_data = binary_file.read()
	base64_encoded_data = base64.b64encode(binary_file_data)
	base64_message = base64_encoded_data.decode('utf8')

	print (base64_message)