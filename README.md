# Jose Melo
## Date: 11-13-2025
#### Repository for DBA 120 Week 13
#### fun_with_words_Melo.sql 

# STEP 1
#### Question 3 Error Message:
###### Error at line 2/5: ORA-42399: cannot perform a DML operation on a read-only view
###### 1. UPDATE WORD_REL_RO
###### 2. SET syn_col = 'blithe'
###### 3. WHERE word = 'insouciant';
#### Screenshot also provided in Blackboard.


# STEP 3
#### Which commands caused errors, and why?
###### - The Update Command in Question 3 caused an error, this is because I tried doing an Update command on a "READ ONLY" View.
#### Why are DML operations restricted in some views?
###### - DML Operations aren't allowed to be done on Views that are "READ ONLY"
#### How is a materialized view different from a regular view?
###### - A materialized view is different from a regular view because materialized view stores data and runs faster than a Regular View, which doesn't store data and is Query - Time based. 
