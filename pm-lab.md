# Afternoon Hands-On Lab

> For this lab you'll interactively explore a large dataset. We will use R to read, query and visualize the data. You will be introduced to methods to benchmark and monitor your computations. Please raise your hand or get the attention of an instructor if you have any questions. If you complete the tasks early, try one of the bonus challenges.


Data Exploration

  * [Configure your analysis environment](#Configuration).
  * [Read data and run some basic queries](#Basics).
  * [Benchmark your code](#Benchmarking).
  * [Parallelize the code](#Parallelization).

Bonus Exercises

  * `multidplyr`
  
- - -

## Configuration

1. Open your terminal application and log into the instance

```
ssh -i <PATHTOKEY> ubuntu@<PUBLICIP>
```
2. Install `htop` for monitoring processes

```
sudo apt-get install htop
```
3. Use `git` to load the code from the lesson:

```
git clone https://github.com/uvasomrc/dsi-workshop.git
```

## Basics

4. Vist the RStudio Server installation in a web browser

```
http://<YOUR-INSTANCE-IP>:8787/
```

5.  You can log into your RStudio Server using the username "ubuntu" and the password "rstudio".

6. Find the `basic.R` script in `dsi-workshop/scripts/` and open it in RStudio

7. Install / load necessary packages and run through the example queries (see [basic.R](scripts/basic.R))

## Benchmarking

8. Find the `bmark.R` script in `dsi-workshop/scripts/` and open it in RStudio

9. Re-run the example queries, this time with timing tests (see [bmark.R](scripts/bmark.R))

10. Return to AWS console and stop the instance (*Actions > Instance State > Stop*)

11. Change the instance type to **m4.4xlarge** (*Actions > Instance Settings > Change Instance Type*)

12. Start the instance

13. Use the new public IP to log into your instance with both RStudio Server and ssh methods

14. Open `htop` in the instance via the terminal:

```
htop
```

15. Re-run the timing tests (see [bmark.R](scripts/bmark.R)) and concurrently monitor with `htop`

## Parallelization

16. Find the `parellel.R` script in `dsi-workshop/scripts/` and open it in RStudio

17. Run the parallel code (see [parallel.R](scripts/parallel.R)) and concurrently monitor with `htop`

## Bonus

18. Install `multidplyr` (<https://github.com/hadley/multidplyr>), modify the example queries to use partitioned data and use timing tests to benchmark performance




