Internet Calendar Synchronization
=================================

This is mostly an internal repository, or at least it is only useful for users
of *Vivendi*, *cpulohn* and *Consens*. What the code does is export various
calendar entries from the aforementioned programs as iCalendar files.  
The following calendars are available:

* `birthdays.ics`: Contains birthdays of employees (retrieved from *cpulohn*)
                   and clients (retrieved from *Vivendi*) that the user has
                   persmission to know.
* `clients.ics`: Gathers all client appointments stored in client calendars in
                 *Vivendi* that the user is allowed to read.
* `outofoffice.ics`: Collects all days when clients and employees are absent
                     from *Vivendi* and *Consens* respectively.


Setup
-----
To get the calendars to work, create a SQL login user `Calendars` on each SQL
server and run the SQL script for each database (see `.\Setup\*.sql`).  
Create a new app folder on *IIS* and place `web.sample.config` in it, store
the SQL login user's password in the `connectionStrings` section together
with the SQL server names, then rename the file to `web.config`.


Adjustments
-----------
Single-sign-on with *Vivendi* works by matching the NetBIOS user name with the
user name of *Vivendi*, the permissions in *cpulohn* and *Consens* are
calculated by the groups the user belongs to. The latter most certainly will
need some change of code.  
