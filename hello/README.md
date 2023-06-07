# Build and Test the code on a work server/local machine

 This task was carried out using GitHub to store the code

  I Forked the Flask-example code from flask documentation to my GitHub repository
  I ran git clone the GitHub repo to my local machine (my work server)
  I Navigated into the local/remote repository/project directory

```bash 
   cd Appsilonproject
   cd into the hello folder where the app.js file is and then made the necessary adjustments to the code
```
  Afterwards, I tested the code locally to know if it's working.
  A dockerfile and requirement.txt file specifying all the required steps for the app to work was created in the hello folder where the code is.
  I verified my docker desktop was up and then ran the command below to build the app locally

```bash 
 docker build -t <hello-world:latest> .
```
  This command was ran in order to run the image
  
```bash 
docker run -d -p 5000:5000 <hello-world:latest>
```
  Afterwards, I navigated to my browser to verify the application is up:

```bash 
 http://127.0.0.1:5000/
```
## CI using github Actions

  I navigated to the actions option on my github repository, I clicked on created a .github/workflow folder and then created the main.yml file containing on the different jobs required to build and push the docker image to dockerhub
  Also, the secrets specified in the yml file (Docker token ad Dockerhub username) were added to the actions under secrets in github, so that it will be automatically picked up when running the workflow.
  A successful workflow indicates that the image was built and pushed successfully to dockerhub.
  I confirmed this by logging in my dockerhub account.
