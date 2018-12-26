#!/usr/bin/python3

from github import Github

g = Github("u", "p")

user = g.get_user("diegopacheco")
print(user.name)

for repo in g.get_user().get_repos():
    print(repo.name)

