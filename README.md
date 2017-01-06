# docker-userenv
Base docker image with a fake user environment. 


You can bind a username / uid / gid at docker run. 

Just modify app.sh to run what you want with the provided uid/gid/username

example: 
  docker run -e gid=1000 -e uid=1000 -e USERNAME=a_user_name IMAGE_NAME /bin/bash
  
