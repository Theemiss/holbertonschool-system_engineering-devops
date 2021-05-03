#!/usr/bin/python3
"""
Write a Python script that, using this REST API,
for a given employee ID, returns information about
his/her TODO list progress
export data in the CSV format.
"""
import csv
import sys
import requests


if __name__ == '__main__':
    id_c = sys.argv[1]
    task_title = []
    complete = 0
    total_task = 0
    url_user = "https://jsonplaceholder.typicode.com/users/" + id_c
    res = requests.get(url_user).json()
    name = res.get('name')
    username = res.get("username")
    url_task = "https://jsonplaceholder.typicode.com/todos/"
    res_task = requests.get(url_task).json()
    for i in res_task:
        if i.get('userId') == int(id_c):
            if i.get('completed') is True:
                task_title.append(i['title'])
                complete += 1
            total_task += 1
    req = requests.get(
        'https://jsonplaceholder.typicode.com/users/' +
        (id_c) + '/todos')
    with open("{}.csv".format(sys.argv[1]), "w") as file:
        writer = csv.writer(file, quoting=csv.QUOTE_ALL)
        for task in req.json():
            writer.writerow([id_c, username,
                            task.get("completed"), task.get("title")])
