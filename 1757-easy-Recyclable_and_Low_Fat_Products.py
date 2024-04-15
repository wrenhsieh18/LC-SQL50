
# Write your MySQL query statement below
# https://leetcode.com/problems/recyclable-and-low-fat-products/?envType=study-plan-v2&envId=top-sql-50
import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    output_df = products[ (products["low_fats"] == "Y") & (products["recyclable"] == "Y") ]
    return output_df[["product_id"]]
    