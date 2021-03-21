import os
from github import Github
import sys


print("succesfully imported Github")

path = ''
file_name = str(sys.argv[1])
username = "Your-username"
password = "your-github-token"

user = Github(username, password).get_user()
user.create_repo(file_name)

print("repo succesfully created")

os.makedirs(path + file_name)