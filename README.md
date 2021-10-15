# Docker-Dolos-Research
The shell script downloads the platform oriented version of dolos and runs the dolos container with parameters - filename and language

## All the Docker images are hosted here -
MACOSX M1 - https://hub.docker.com/repository/docker/3zculprit/research_dolos_macosx_m1
Linux - https://hub.docker.com/repository/docker/3zculprit/research_dolos_linux

Supported architecture(for now) - linux/amd64 and linux/arm/v8 (APPLE M1)

Dolos currently supports following languages -  javascript, python, java, c, c#, bash

## How to run -

1- git clone the repo
2- chmod +x plagiarism.sh
3- ./plagiarism -f <repository list> -l <language> -p <platform (linux or mac_m1)>
  
  ![image](https://user-images.githubusercontent.com/14939604/137438367-4cd43d54-8d84-4003-b9e9-8bfbd1f171fa.png)

  ![image](https://user-images.githubusercontent.com/14939604/137438440-b9434cfa-46fd-433f-9466-ed3e1cf66176.png)

  Go to the URL shown in the CLI -
  ![image](https://user-images.githubusercontent.com/14939604/137438518-19513b94-ef1c-4b71-a402-6d385b479a00.png)

  Click on Continue to see the results -
  ![image](https://user-images.githubusercontent.com/14939604/137438636-d2778896-6793-4bfe-8611-96f08a95fc06.png)
  
  ## On MAC
  ![image](https://user-images.githubusercontent.com/14939604/137439247-566890ec-8c5d-4cde-aad9-cbb83ca22bbe.png)

  ## DON'T forget to remove your container after the work is done. This will also remove the localtunnel URL.
