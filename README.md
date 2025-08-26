# 9IS_TEST_DOCKER
git bash
git config --global user.email "juliram81@gmail.com"
git config --global user.name "ramiju81"

docker build -t flask_app .
docker run -p 5000:5000 flask_app
