Young Ju (Sally) Park
Module 9.1: How the Web Works
September 5th, 2016

# R0: View HTTP Requests

## 1. In `phase-0-tracks/web_dev/request_cycle` create a Markdown file called `http_requests.md`. Research the following questions and record your answers in that file.

Done!

## 2. What are some common HTTP status codes?

* 200 OK

This is the standard response for successful HTTP requests.

* 301 Moved Permanently

Requested resource has been assigned a new permanent URI, any future references to this resource should use one of the returned URIs.

* 400 Bad Request

Request not understood by server due to bad syntax, client shouldn't repeat request without modifying request

* 401 Unauthorized

Request requires user authentication

* 403 Forbidden

Server understood request, but refuses to fulfill it - authorization will not help and request shouldn't be repeated

* 404 Not Found

Server has not found anything matching request URI

* 500 Internal Server Error

Server encountered unexpected condition which prevented it from fulfilling request

* 503 Service Unavailable

Web server is unable to handle HTTP request at the time, could occur because of
  * server crash
  * server maintenance
  * server overload
  * server being maliciously attacked
  * website used up allotted bandwidth

* 550 Permission Denied

Server is telling you that account you are currently logged into doesn't have permission to perform the action you are attempting

## 3. What is the difference between a GET request and a POST request? When might each be used?

The main difference between the request methods GET and POST is that GET requests data from a resource, while POST submits data to be processed to a resource.

|                           | GET                                                                     | POST                                                                                      |
|-------------------------- |-----------------------------------------------------------------------  |------------------------------------------------------------------------------------------ |
| BACK button/Reload        | Harmless                                                                | Data will be re-submitted                                                                 |
| Bookmarked                | Can be bookmarked                                                       | Cannot be bookmarked                                                                      |
| Cached                    | Can be cached                                                           | Not cached                                                                                |
| History                   | Parameters remain in browser history                                    | Parameters are not saved in browser history                                               |
| Data length restrictions  | GET method adds data to URL and maximum URL length is 2048 characters   | No restrictions                                                                           |
| Data type restrictions    | Only ASCII characters allowed                                           | No restrictions, binary data also allowed                                                 |
| Security                  | GET is less secure, data sent is part of URL (!)                          | POST more secure because parameters are not stored in browser history or web server logs  |
| Visibility                | Data is visible to everyone in the URL                                  | Data is not displayed in the URL                                                          |

(!) This means that we should NEVER use GET when sending passwords and other potentially sensitive information.

## 4. **Optional bonus question:** What is a cookie? How does it relate to HTTP requests?