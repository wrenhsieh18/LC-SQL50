import pandas as pd

def top_three_salaries(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
    employee['ranking'] = employee.groupby('departmentId')['salary'].rank(method='dense', ascending=False)
    high_earners_df = employee[employee['ranking'] <= 3]
    top_three_earners_df = pd.merge(high_earners_df, department, how='left', left_on='departmentId', right_on='id')
    top_three_earners_df = top_three_earners_df[['name_y', 'name_x', 'salary']]
    top_three_earners_df.columns = ['Employee', 'Salary', 'Department']
    return top_three_earners_df