# Netfilms

This is the real Netflix project but I gave the idea to Reed Hastings and Marc Randolph because I had some others and to share is to live (:

## How does the App work?

- The data of some movies and series was introduced into Workbench MySQL DataBase. Movies and series are stored in differents tables.
- All the data is recovered from the DB with Spring Boot and put into a local host with Json format. This part of the app is entirely coded with Java.
- The page is printed with React once all the Json data is fetched and placed in the proper component.

## How does the API work?

I've got all the information from an API called "The Movie Database", in order to store all the data from films and series I wanted in the database using MySQL Workbench.
Then I connect my database with my Spring project, from where I can manage all the information I need to create my own API: depending of the endpoint you set in the localhost, you will be able to get some films or series.

![React](https://img.shields.io/badge/react-%2320232a.svg?style=flat&logo=react&logoColor=%2361DAFB)
<br>
![img](https://img.shields.io/badge/version-1.0-blue)
