def calculate(gross_salary):
    if (gross_salary <= 11850):
        print ("Net Salary after tax is ",gross_salary)
        print ("Tax deduction is 0%")
    elif (gross_salary>=11851 and gross_salary<=46350):
        print ("Net Salary after tax is ",round (gross_salary-(gross_salary*0.20),2))
        print("Tax deduction is",round(gross_salary*0.20),2)
    elif (gross_salary>=46351 and gross_salary<=150000):
        print ("Net Salary after tax is ",round(gross_salary-(gross_salary*0.40),2))
        print("Tax deduction is", round((gross_salary*0.40),2))
    elif (gross_salary>150000):
        print ("Net Salary after tax is ",round(gross_salary-(gross_salary*0.45),2))
        print ("Tax deduction is", round(gross_salary*0.45),2)

gross_salary=int(input("Enter your Gross Salary:"))
calculate(gross_salary)
