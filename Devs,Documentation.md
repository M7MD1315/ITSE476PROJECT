## Database Schema
The database contains 6 tables
- booking
- comment
- movielist
- rataing
- topupreq
- user

We will go troughtout each table
### booking
(int) bookingId <br>
(int) movieId <br>
(int) userId<br>
(varchar) date<br>
(varchar) seats<br>

### comment
(int) commentId<br>
(int) userId<br>
(int) movieId<br>
(varchar) comment<br>
(varchar) datetime<br>

### movielist
(int) movieId<br>
(varchar) Name<br>
(varchar) Genre<br>
(varchar) Director<br>
(varchar) Description<br>
(varchar) image<br>
(varchar) imdb<br>
(varchar) showTime<br>
(varchar) category<br>

### rating
(int) movieId<br>
(int) userId<br>
(int) rating<br>

### topupreq
(int) tid<br>
(int) userId<br>
(float) amount<br>
(varchar) cardNo<br>
(varchar) cvv<br>
(date) expDate<br>

### user
(int) userId<br>
(varchar) email<br>
(varchar) password<br>
(int) status<br>
(varchar) fname<br>
(varchar) lname<br>
(varchar) image<br>
(float) accBalance<br>


![Screenshot 2022-11-02 162006](https://user-images.githubusercontent.com/76538765/199500292-0fb82642-249f-422a-a781-2ebf1b98a913.jpg)


