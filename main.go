package main 

import (
	"fmt"
	"net/http"
)

func main (){
	http.HandleFunc("/hello", func(writer http.ResponseWriter, req *http.Request){
		writer.WriteHeader(200)
	})
	fmt.Println("hello docker")

	http.ListenAndServe(":8181", nil)
}


//  docker build -f week2\Dockerfile --force-rm -t egitim-docker .
/** 
	docker build -t egitim-docker .      
	docker run egitim-docker
	docker exec -it 3367d***6eb4  /bin/sh connect to container with shell
		ps aux      list processes -- isolated process just for this container

	docker run -it -d -p 8181:8181 egitim-docker 
				  dockerPort : hostPort
		dockerPort docker içerisinde çalışmasını istediğim port
		hostPort makinem üzerinde çalışmasını istediğim port
**/