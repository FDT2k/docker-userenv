#!/bin/bash

#uid=1000 gid=1000

if [ -z "${uid}" ]; then
  export uid=1000
fi

if [ -z "${gid}" ]; then
  export gid=1000
fi

if [ -z "${USERNAME}" ]; then
  export USERNAME="developer"
fi

export HOME="/home/${USERNAME}"


mkdir -p /home/${USERNAME}

echo "${USERNAME}:x:${uid}:${gid}:Developer,,,:/home/${USERNAME}:/bin/bash" >> /etc/passwd
echo "${USERNAME}:x:${gid}:" >> /etc/group
echo "${USERNAME} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USERNAME}
chmod 0440 /etc/sudoers.d/${USERNAME}
#chown ${UID}:${GID} -R /home/${USERNAME}

sudo -u ${USERNAME} -E -H sh -c "bash /app/app.sh"
