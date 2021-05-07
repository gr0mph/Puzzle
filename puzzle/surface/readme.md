# Surface

Create a 2d array

When information is asked on specific case,
Check If compute has already done or not.
If not:
  Use a stack structure to stack all surface that touch the previous surface case.
  For each new case, check via an update method the validity of the case.
  When done, get the length of list and update case.
