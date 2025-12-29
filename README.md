#----------------------------------#
   ---- BLOG DATABASE PROJECT ----
#----------------------------------#

===> Description:
> This project is a simple SQL database for a blog. It helps manage users, posts, categories, and comments.



===> Database Structure :
> The project has 4 main tables:

     -> User: Stores Name, Email, and Passwords.
     -> Category: Stores topics like "Tech" or "Sport".
     -> Article: Stores titles, content, and dates.
     -> Comment: Stores what people say about articles.



===> Rules & Best Practices :
> I followed Chapiter 6 rules to make it professional:

     -> Primary Keys: Every table has a unique ID.
     -> Foreign Keys: Tables are linked (Article -> User).
     -> Unique Data: Emails cannot be repeated.
     -> Performance: Added Indexes to search faster.
     -> Clean Code: Used simple and clear names.



====> How to Run :
    1. Open the file script.sql
    2. Copy all the code.
    3. Past it in MySQL Workbench or PhpMyAdmin.
    4. Press Execute.
