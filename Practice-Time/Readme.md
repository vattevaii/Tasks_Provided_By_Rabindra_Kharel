
# Test Question
 The table **dividend** consists of *companies* and their respective *fiscal year* of **dividend** distribution. Some companies give dividend every year, but some companies do not.
 
Frominvestment point of view, Those companies who have given
dividend for at least  **3 consecutive years** in the past are labelled as *'valuestocks'*. Please write a query to find the *'valuestocks'* i.e thecompanies that have given dividend for at least **3 consecutive year** in the past.

## A. Create Table Script:
*CREATE TABLE dividend(*

*company character varying(12),*

*fiscal_year integer*

*)*

## B. Test Data Set
|company|fiscal_year|
|-|-|
|AHPC|20702071|
|AHPC|20712072|
|AHPC|20732074|
|AHPC|20762077|
|CZBIL|20692070|
|CZBIL|20702071|
|CZBIL|20712072|
|CZBIL|20732074|
|GBIME|20692070|
|GBIME|20702071|
|GBIME|20712072|
|GBIME|20732074|
## C. Expected Output

|valuestocks|
|-------|
|{"CZBIL ",""GBIME "}|