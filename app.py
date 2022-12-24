import requests 
import streamlit as st 
from streamlit_lottie import st_lottie 
import mysql.connector

def display_list():
    db_name="project"
    db=mysql.connector.connect(
        host= "localhost",
        user="root",
        password="",
        database=db_name
    )
    result3=st.button("FETCH",key=1,help=None)
    st.write(result3)
    if result3: 
        sql="select aadhar, name, license_expiry_date from license order by license_expiry_date"
        cursor=db.cursor()
        cursor.execute(sql)
        
        st.table(cursor)

 
def min_dl():
    db_name="project"
    db=mysql.connector.connect(
        host= "localhost",
        user="root",
        password="",
        database=db_name
    )
    result1=st.button("FETCH",key=2,help=None)
    st.write(result1)
    if result1: 
        sql="select cov, min(dl_issue_date) from dl group by cov"
        cursor=db.cursor()
        cursor.execute(sql)
        
        st.table(cursor)

def min_llr():
    db_name="project"
    db=mysql.connector.connect(
        host= "localhost",
        user="root",
        password="",
        database=db_name
    )
    result1=st.button("FETCH",key=3,help=None)
    st.write(result1)
    if result1: 
        sql="select cov, min(llr_issue_date) from llr group by cov"
        cursor=db.cursor()
        cursor.execute(sql)
        
        st.table(cursor)

def earn ():
    db_name="project"
    db=mysql.connector.connect(
    host= "localhost",
    user="root",
    password="",
    database=db_name
    )
    result1=st.button("COUNT",key=5,help=None)
    st.write(result1)
    if result1: 
        sql="SELECT cov, sum(cost) as c FROM license GROUP BY cov HAVING SUM(cost) > 20;"
        cursor=db.cursor()
        cursor.execute(sql)
        
        st.table(cursor)

def per1():
    db_name="project"
    db=mysql.connector.connect(
    host= "localhost",
    user="root",
    password="",
    database=db_name
    )
    result1=st.button("FETCH",key=4,help=None)
    st.write(result1)
    if result1: 
        sql="select count(*) from dl"
        cursor=db.cursor()
        cursor.execute(sql)
        a=cursor
        st.table(a)
        
        #sql2="select count(*) from dl"
        #cursor.execute(sql2)
        #b=cursor
        #sql3="select count(*) from llr"
        #cursor.execute(sql2)
        #c=cursor
            
            
        #d=c+b
        #e=(d/a)*100
        #st.title(f"Percentage={a}%")
        # st.title(f"Percentage->{cursor}")

        
        
            


    


st.set_page_config(page_title="My Webpage", page_icon = ":tada:", layout = "wide")

def load_lottieur1(url):
    r=requests.get(url)
    if r.status_code!=200:
        return None
    return r.json()



lottie_coding=load_lottieur1("https://assets8.lottiefiles.com/packages/lf20_rhgcitkd.json")
lottie_coding2=load_lottieur1("https://assets4.lottiefiles.com/packages/lf20_mb4fxabx.json")
with st.container ():
    st.subheader("Hi I am Parth :wave:")
    st.title("A PES UNIV student")
    st.write("[Learn More>](https://pes.edu/)")


    
with st.container():
    st.write ("---")
    left_column , right_column = st.columns(2)
    with left_column:
        st.write("RANDOM FACTS...")
        st.subheader ("First learning license ever")
        # result=st.button("FIND",key=1)
        # st.write(result)
        min_llr()
        st.subheader ("First driving liscene ever")
        # result2=st.button("FIND",key=2)
        # st.write(result2)
        min_dl()
        st.subheader("No of Citizens who have both driving license and learning license ")
        per1()
        st.subheader("Which COV department earns the most and how much?")
        earn()

    with right_column:
        st_lottie(lottie_coding2, height=300, key="rto")
        

with st.container():
    left_column , right_column = st.columns(2)
    with left_column:
        st.write("---")
        st.subheader("Upcoming Expiry Dates for License")
        display_list()
    with right_column:
        st_lottie(lottie_coding, height=300, key="rt02")

        

 




        

