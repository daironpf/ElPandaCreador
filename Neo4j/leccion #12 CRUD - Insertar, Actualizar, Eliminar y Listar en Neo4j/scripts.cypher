//Idioma
merge (len:Language {name: "Español",url: "espannol",abbreviation: "es",urlFlag: "espannabandera.jpg",status: True})

///********************************************Primera Noticia***************************************************
//Categorias::
//Inteligencia Artificial
merge(categoryIA:Category { name: "Inteligencia Artificial",url: "inteligencia-artificial",description: "Noticias relacionadas con el mundo de la Inteligencia Artificial. Definiciones, ejemplos, apps, proyectos, programación y mucho más.",urlIcon:"ia.jpg"})
merge(categoryIA)-[:IN_LANGUAGE]->(len)

//Etiquetas::
//Detectar tsunami
merge(tagDetecTsunami:Tag {  name: "Detectar tsunami",url: "detectar-tsunami",urlIcon: "radar.jpg"})
merge(tagDetecTsunami)-[:IN_LANGUAGE]->(len)
//Tsunami
merge(tagTsunami:Tag {  name: "Tsunami",url: "tsunami",urlIcon: "tsunami.jpg"})
merge(tagTsunami)-[:IN_LANGUAGE]->(len)
//Japon
merge(tagJapon:Tag {  name: "Japón",url: "japon",urlIcon: "japonbandera.jpg"})
merge(tagJapon)-[:IN_LANGUAGE]->(len)
//Tsunami con IA
merge(tagTsunamiIA:Tag {  name: "Tsunami con IA",url: "tsunami-con-ia"})
merge(tagTsunamiIA)-[:IN_LANGUAGE]->(len)

//Post::
//Se puede predecir un tsunami en pocos segundos gracias a un nuevo modelo de IA
merge(postTsunami:Post {
       title: "Se puede predecir un tsunami en pocos segundos gracias a un nuevo modelo de IA",
       content: "Desde que el tsunami comienza, hasta que llega a las costas, pueden pasar varios minutos, más de media hora en algunos casos, tiempo suficiente para evacuar a miles de personas si se detecta a tiempo.

        El problema es que desde que los sensores envían la información de cómo está la situación en alta mar, hasta que los ordenadores llegan a la conclusión de que estamos frente a un tsunami, puede pasar más de 30 minutos, por lo que no hay tiempo de evacuar a nadie.

        Hace una década murieron más de 18.000 personas en Japón por no tener ningún sistema de predicción adecuado, pero parece que eso cambiará a partir de ahora.

        El Laboratorio de Ciencias de la Predicción RIKEN ha publicado una nota de prensa en la que indican que han utilizado el aprendizaje automático para predecir con precisión los impactos de los tsunamis en menos de un segundo, necesitando para ello la red de sensores más grande del mundo, encargados de monitorear el movimiento del fondo del océano.

        Cuentan con 150 estaciones en alta mar dedicados a enviar datos y predecir tsunamis, aunque para ello se han de transformar los datos generados en alturas y extensiones de tsunami a lo largo de la costa, algo que requiere una potencia de computación enorme.

        El modelo RIKEN AI ha sido entrenado con 3000 eventos de tsunami generados por computadora, y lo han probado con otros 480 escenarios de tsunami y tres tsunamis reales, gastando solo el uno por ciento del esfuerzo computacional de los enfoques convencionales. Ya que tiene la información de cómo se han creado miles de tsunamis, cuando recibe datos parecidos de los sensores, avisa de que estamos frente a uno nuevo, por lo que la alerta se dispara en la ciudad y se disminuye el riesgo de pérdida de vidas humanas.

        El método solo es preciso para los tsunamis que superan los 1,5 metros, pero ya están trabajando para que sea compatible con los más pequeños.",
       description: "El método solo es preciso para los tsunamis que superan los 1,5 metros, pero ya están trabajando para que sea compatible con los más pequeños.",
       summary: "El Laboratorio de Ciencias de la Predicción RIKEN ha publicado una nota de prensa en la que indican que han utilizado el aprendizaje automático para predecir con precisión los impactos de los tsunamis en menos de un segundo",
       leaps: "Desde que el tsunami comienza, hasta que llega a las costas, pueden pasar varios minutos, más de media hora en algunos casos, tiempo suficiente para evacuar a miles de personas si se detecta a tiempo.",
       updateMoment: "2023/01/02",
       publishDate: "2023/01/02",
       place: "Japón",
       url: "se-puede-predecir-un-tsunami-en-pocos-segundos-gracias-a-un-nuevo-modelo-de-ia"
})
//Relaciones del post con sus etiquetas
merge(postTsunami)-[:HAS_TAG]->(tagDetecTsunami)
merge(postTsunami)-[:HAS_TAG]->(tagJapon)
merge(postTsunami)-[:HAS_TAG]->(tagTsunami)
merge(postTsunami)-[:HAS_TAG]->(tagTsunamiIA)
//Relaciones del post con sus categorias
merge(postTsunami)-[:IN_CATEGORY]->(categoryIA)
//Relacion del post para especificar el idioma en el cual se encuentra
merge(postTsunami)-[:IN_LANGUAGE]->(len)

//Autor::
merge(aut1:User:Author {name: "Juan",userName: "juan",url: "diego",lastname: "Diego Polo",userTwitter: "@juanDiego",email: "juan@miemail.com"})
merge(aut1)-[:CREATE {created:'2023/01/02'}]->(postTsunami)


///********************************************Segunda Noticia***************************************************
//Categorias::
//Videos
merge(categoryVideos:Category { name: "Ví­deos",url: "videos",description: "Noticias sobre vídeos, apps de vídeo, trucos para grabar vídeos, recursos, sitios para bajar vídeos y mucho más.",urlIcon:"camaravideo.jpg"})
merge(categoryVideos)-[:IN_LANGUAGE]->(len)
//Youtube
merge(categoryYoutube:Category { name: "Youtube",url: "youtube-multimedia",description: "Noticias sobre Youtube, recursos, trucos, consejos y novedades de la plataforma de vídeos de Google.",urlIcon:"youtubeicon.jpg"})
merge(categoryYoutube)-[:IN_LANGUAGE]->(len)

//Etiquetas::
//Editar
merge(tagEditar:Tag {  name: "Editar",url: "editar",urlIcon: "edit.jpg"})
merge(tagEditar)-[:IN_LANGUAGE]->(len)
//Subtí­tulos
merge(tagSubtitulo:Tag {  name: "Subtí­tulos",url: "subtitulos",urlIcon: "subtitulo.jpg"})
merge(tagSubtitulo)-[:IN_LANGUAGE]->(len)
//Traducir
merge(tagTraducir:Tag {  name: "Traducir",url: "traducir",urlIcon: "traducir.jpg"})
merge(tagTraducir)-[:IN_LANGUAGE]->(len)
//Transcribir
merge(tagTranscribir:Tag {  name: "Transcribir",url: "transcribir",urlIcon: "transcribir.jpg"})
merge(tagTranscribir)-[:IN_LANGUAGE]->(len)
//Youtube
merge(tagYoutube:Tag {  name: "Youtube",url: "youtube",urlIcon: "youtube.jpg"})
merge(tagYoutube)-[:IN_LANGUAGE]->(len)

//Post::
//Transcribe, traduce y edita videos de YouTube
merge(postYoutube:Post {
       title: "Transcribe, traduce y edita videos de YouTube",
       content: "En Youtube podemos encontrar cursos enteros de una infinidad de temas, análisis de gadgets, trucos para ser más productivo en el trabajo, técnicas de relajación, música, charlas… es una enorme cantidad de información usada por millones de personas en todo el mundo para, en muchas ocasiones, cambiar su vida.
        Así lo hicieron los que aprendieron a programar desde su casa, o los que aprendieron idiomas nuevos, o los que encontraron una forma de ganarse la vida invirtiendo en acciones.

        Esta información está en muchos idiomas diferentes, por eso es importante usar el sistema de subtítulos con frecuencia, aunque a veces se necesitan herramientas adicionales que ayuden a transcribir lo que escuchamos, ofreciendo también la posibilidad de editar el texto ofrecido y traducirlo cuando sea necesario.

        Eso es lo que hace Proust, una herramienta que solo pide la dirección de un vídeo de Youtube para ofrecer los recursos necesarios para transcribir, traducir y editar videos de YouTube.

        El objetivo es ofrecer una aplicación que ayude a que los investigadores, estudiantes y curiosos de todo el mundo accedan y analicen las palabras habladas en el contenido de video.

        Se trata de una herramienta que acaba de nacer, y muestra error en algunos vídeos, por lo que no siempre funciona como debería. Aún así, cuando lo consigue, ofrece un panel muy útil para poder trabajar con el texto extraído del vídeo.

        No es la primera herramienta que vemos capaz de extraer subtítulos de Youtube, de hecho en softwaretestinghelp.com analizaron 15 de ellas hace poco, pero promete ser una de las más rápidas.

        Esperemos que con el tiempo consiga solucionar los problemas que muestra actualmente con algunos vídeos, porque puede ser una buena forma de hacer más accesibles los vídeos que encontramos en Youtube.",
       description: "Proust, una herramienta que solo pide la dirección de un vídeo de Youtube para ofrecer los recursos necesarios para transcribir, traducir y editar videos de YouTube.",
       summary: "Esta información está en muchos idiomas diferentes, por eso es importante usar el sistema de subtítulos con frecuencia, aunque a veces se necesitan herramientas adicionales que ayuden a transcribir lo que escuchamos, ofreciendo también la posibilidad de editar el texto ofrecido y traducirlo cuando sea necesario.",
       leaps: "En Youtube podemos encontrar cursos enteros de una infinidad de temas, análisis de gadgets, trucos para ser más productivo en el trabajo, técnicas de relajación, música, charlas... es una enorme cantidad de información usada por millones de personas en todo el mundo para, en muchas ocasiones, cambiar su vida.",
       updateMoment: "2023/01/02",
       publishDate: "2023/01/02",
       place: "internet",
       url: "transcribe-traduce-y-edita-videos-de-youtube"
})

//Relaciones del post con sus etiquetas
merge(postYoutube)-[:HAS_TAG]->(tagEditar)
merge(postYoutube)-[:HAS_TAG]->(tagSubtitulo)
merge(postYoutube)-[:HAS_TAG]->(tagTraducir)
merge(postYoutube)-[:HAS_TAG]->(tagTranscribir)
merge(postYoutube)-[:HAS_TAG]->(tagYoutube)
//Relaciones del post con sus categorias
merge(postYoutube)-[:IN_CATEGORY]->(categoryVideos)
merge(postYoutube)-[:IN_CATEGORY]->(categoryYoutube)
//Relacion del post para especificar el idioma en el cual se encuentra
merge(postYoutube)-[:IN_LANGUAGE]->(len)

//Autor::
merge(aut1)-[:CREATE {created:'2023/01/02'}]->(postYoutube)