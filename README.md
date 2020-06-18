# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Task model
| column | Data type |
| ---------| ---------- |
| User ID  | integer  |
| Reception date  | datetime  |
| Task title  | text  |

User model
| column | Data type |
| ---------| ---------- |
| User name  | string  |
| Mail address  | string  |
| Password  | string  |
| Last login date  | datetime  |
| Login check | string  |

Deliveries model
| column | Data type |
| ---------| ---------- |
| Shipping method  | string  |
| Delivery company name  | string  |
| Delivery carrier phone number  | integer  |
| Delivery company address  | string  |

Task content model
| column | Data type |
| ---------| ---------- |
| Task content  | text  |
| Desired completion date  | datetime  |