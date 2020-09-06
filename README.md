 # network Analysis -Markov Algorithm 
 <br>Marshood Ayoub  ([Marshood](https://github.com/Marshood).) <br>
 <br>
 First thing we do to create a network using makeNetwork.m, the network we created with 2694 nodes and 94 clusters.
Note:  The clustering algorithm I wrote will be in the file MCL.m and the network in the file HW2Net1.NET
Also, the clustering algorithm with different parameters in the files MCLe*r*.clu, Instead * will be listed the value of the parameters
Note: To check the Markov algorithm in file MCL.m and compile the code, you can change the two parameters R, E in lines 13-14, and the number of the node's and the cluster's in line 11-12
Note: The images are saved in order from the first to the end are counted by serial number for example: Pic1, Pic2, …, PicN
The first picture Pic1:

![image](https://user-images.githubusercontent.com/46463381/92322498-35d2d380-f03a-11ea-9efc-20967a83ba65.png)
<br><br>
With some processing on the network Pic2: 

![image](https://user-images.githubusercontent.com/46463381/92322512-5b5fdd00-f03a-11ea-8369-71e85c1d7a16.png)

<br><br>
Node: this is the first part that include the probability of 0.6 if in the same other cluster 30/2694

The next picture produces the graph with the division we got Pic3

![image](https://user-images.githubusercontent.com/46463381/92322522-69adf900-f03a-11ea-8dd3-7091753bda60.png)

<br><br>
Pic4 : 
![image](https://user-images.githubusercontent.com/46463381/92322530-7b8f9c00-f03a-11ea-8d79-5318938206b0.png)

<br><br>
Now, after we run MCL Algorithm:
In the first step if we take the two parameters E and R which will be equal to 2 
The result after this step in Pic5 
Pic5: 

![image](https://user-images.githubusercontent.com/46463381/92322535-88ac8b00-f03a-11ea-9b69-b66f788b9df3.png)

<br><br>
Pic 5.1 

![image](https://user-images.githubusercontent.com/46463381/92322544-9530e380-f03a-11ea-8b1d-b1a7e24da4f8.png)

<br><br>

Now to check what the two parameters E and R affect the cluster; we try to change this parameter and we will examine what will be the new division of the graph

With parameters  E=2, R=3 

Pic 5.2 
![image](https://user-images.githubusercontent.com/46463381/92322557-a679f000-f03a-11ea-8c7f-8a6ad11077bc.png)
<br><br>

With parameters R=8, E=8 pic6
pic6
![image](https://user-images.githubusercontent.com/46463381/92322563-b265b200-f03a-11ea-9f16-3673d034cfe1.png)

<br><br>
we can see if we increase them the number of clusters will be less than the previous step
Now with E=2, R=8 Pic7
Pic7:

![image](https://user-images.githubusercontent.com/46463381/92322574-bdb8dd80-f03a-11ea-94dd-cbfa1358d464.png)
<br>
We can see the number of clusters increasing now from the previous time
Now with E=8, R=2 Pic8
Pic8:

![image](https://user-images.githubusercontent.com/46463381/92322589-cf9a8080-f03a-11ea-9b3d-d0ff897e2257.png)

<br>
We can see that all the nodes are in the same cluster now, if we increase the E it reduces the number of clusters but if we increase the R it increases them provided the second parameter is constant
Now with E=2, R=16 Pic 16
Pic16

![image](https://user-images.githubusercontent.com/46463381/92322599-daedac00-f03a-11ea-9aaf-a890dc77f7a9.png)

<br>
We took the same R and changed the E to be less than 8 (previous state) and equal to 5
It is possible that the number of clusters increases and each time you reduce it the number of clusters increases.

Now we’ll try to enlarge them together and change them
With E=5,R=3 Pic14
Pic14:
![image](https://user-images.githubusercontent.com/46463381/92322609-e5a84100-f03a-11ea-9060-08488d4e271e.png)
<br>
Now with R=16, E=16 Pic9
Pic9: 
![image](https://user-images.githubusercontent.com/46463381/92322617-ee991280-f03a-11ea-88b0-cfe76a5a0e35.png)
<br>

We can see that this division is better than all the divisions so far
With E=20, R=20 Pic 10
Pic10

![image](https://user-images.githubusercontent.com/46463381/92322629-fd7fc500-f03a-11ea-921a-b3776daa05c6.png)
<br>
We see that we have one large cluster and the rest are small and their number is less than all the previous situations this is the best choice I have had in my experiment
With R=20, E=2 Pic12
Pic12
![image](https://user-images.githubusercontent.com/46463381/92322636-08d2f080-f03b-11ea-8ac9-c42dc8fb130b.png)
<br>

Here the number of clusters increases
Now With E=2, R=20 Pic13
Pic13:
![image](https://user-images.githubusercontent.com/46463381/92322642-125c5880-f03b-11ea-9912-6c8ac4b9f4b2.png)
<br>
If the R and E are equal to 32 PIC11
summary- When we increase the two parameters the number of clusters we will have will be less than the existing state (except if in the existing state we are in one cluster).
And then if we increase one of the parameters for example a constant E and R we will also have a division with fewer clusters than what will be
But if we increase the second parameter R and E constantly we can see that the number of clusters increases now until we reach the final state
So the best choice I got when I set the parameters to be equal to 8 because we see that we have one large cluster and the rest are small and their number is less than all the previous situations it is the best choice I have in my experiment
