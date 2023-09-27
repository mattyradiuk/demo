# README

## Hi there
Thanks for taking the time to check out the README for my simple Java demo app! In here I will tell you a little bit about the app and how you can get it running on your machine. 

## Development Info

To create this application I used Java 17 and Spring Boot 3.1.4, along with PostgreSQL version 16. It is running by default on port 9000.

### Data Load

In order to load the data from the client into the database, I first had load it into Excel and save it as a comma delimited *.csv* file. With the .csv I could load it into the database using the following PSQL command.
```
COPY mytable FROM '/path/to/csv/file' WITH CSV HEADER;
```
This was just dandy for testing, but not perfect for containerization. Thus I used the **pg_dump** command to get the SQL dump for the database. This SQL dump file is set up to automatically run every time the application is started, so that's the data load taken care of. 💥 On to the fun stuff.

## REST Endpoints

There are two endpoints that I implemented for this application, and they both use the HTTP Request method **GET**. They are **/volunteers** and **/volunteers/paginated**
* **/volunteers** takes one request parameter as input, and Integer called 'job_id' and returns a list of volunteers that are associated with that job id. If there are no volunteers for the given job id, it will return an empty list. Usage should look something like this *localhost:9000/volunteers?job_id=2*

* **/volunteers/paginated** takes two request parameters, 'page' and 'per_page'. This will return a paginated list of volunteers along with the description of the job that they signed up for. Please note that the 'page' parameter uses zero-based indexing meaning that the first page is page 0, while 'per-page' must be greater than zero. Putting nonsense values into these parameters will result in a 400 Error. Usage should look something like *localhost:9000/volunteers/paginated?page=0&per_page=6*

Note that these APIs are not secured in any way. 

## Running the Application

Everything has been compiled and a Dockerfile has been provided meaning it is quite simple to run the application given you have all the necessary software on your machine. From the root directory, open a command line and enter 
```
docker compose up
```
It should be like magic. Should it *not* work. There are three more commands which you can try. They are as follows
```
mvn clean package
docker compose build
docker compose up
```
The first one recompiles the project in the event that any changes have to be made to the code. The next builds the Docker image and finally the last one runs it.  


## Notes / Assumptions

I made this app over the course of a single weekend, so I know that is isn't going to be perfect. I assumed that the tables weren't going to be outrageously big, so trying to find the most performant queries possible wasn't my highest priority. Given more time I probably would go back and write custom queries instead of relying on JPA to do it for me, but then again, given more time I also would've added things like caching, stats/usage metrics, some form of security, better logging, more tests, swagger docs etc...

### That is all. I really hope that it works! Thank you for your time.
## Matt Radiuk 2023