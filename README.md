# Customer Segmentation and Sales Analysis  

## Project Overview  
This project analyzes customer data to derive actionable insights that improve sales and customer retention. The analysis includes customer segmentation based on demographics, behavior, and geography, along with identifying churned customers, big spenders, and frequent shoppers.  

### Tools Used  
- **SQL** (for data extraction, transformation, and analysis)  
- **Excel** (for visualization, interactive dashboards, and deeper insights using Power Pivot & Pivot Tables)  

## Analysis Performed  

### 1. Demographics Segmentation  
- **Gender-Based Analysis**  
  - **Insight:** Female customers purchase more products compared to males.  
- **Age Group Analysis**  
  - **Insight:** Customers aged 45+ are frequent purchasers.  

### 2. Behavioral Segmentation (RFM Analysis)  
Performed **Recency, Frequency, and Monetary (RFM) Analysis** to categorize customers based on:  
- **Recency:** How recently a customer made a purchase.  
- **Frequency:** How often a customer purchases.  
- **Monetary Value:** The total amount spent by a customer.  

#### Top 5 Customers (Based on RFM Score)  
| Customer Name  | Customer ID  | Recency  | Frequency  | Monetary Value (₹) |  
|---------------|-------------|---------|-----------|-----------------|  
| Mira Sharma  | CUST3412    | 1284    | 5         | 1873.47         |  
| Ishaan Yadav  | CUST3332    | 1173    | 5         | 1775.12         |  
| Aanya Joshi  | CUST4045    | 1204    | 4         | 1719.71         |  
| Kabir Joshi  | CUST1071    | 1185    | 5         | 1709.12         |  
| Kabir Singh  | CUST0648    | 1204    | 4         | 1665.11         |  

### 3. Geographic Segmentation  
- **Top Performing Locations:**  
  - **Vasant Kunj, Lajpat Nagar, and Saket** generated the highest sales.  

### 4. Churned Customers  
- Identified customers who haven’t purchased in the last **6 months**.  
- **Insight:** Certain regions have higher churn rates.  

### 5. Customer Spending Patterns  
- **Occasional Big Spenders:** Customers who make large purchases infrequently.  
- **Frequent Low Spenders:** Customers who make smaller purchases frequently.  
- **Insight:** Frequent low spenders contribute to steady revenue, while big spenders buy high-value items less often.  

### 6. Customer Lifetime Value (CLV)  
- Estimated the long-term revenue potential of customers.  
- **Insight:** High CLV customers make consistent purchases and contribute significantly to revenue.  

### 7. Top 10 Customers  
- Identified top spenders based on total sales.  

### 8. Top 5 Product Categories  
- Analyzed highest-selling product categories.  

### 9. Sales vs Orders (Monthly Trends)  
- Identified peak sales periods and seasonal trends.  

### 10. First-Time Buyers  
- Identified customers making their first purchase.  

## Implementation in SQL & Excel  

### SQL Approach  
- Used SQL queries for **data extraction, transformation, and customer segmentation.**  
- Applied **joins, window functions, subqueries, and RFM analysis** to derive insights.  

### Excel Approach  
- Imported data into **Excel Power Pivot** and created **relationships between Customer & Purchase tables.**  
- Used **Pivot Tables** to summarize key metrics.  
- Created **KPIs using Power Pivot** for deeper insights.  
- Designed an **interactive dashboard** with slicers for:  
  - **Total Customers by Gender & Age Group**  
  - **Total Amount Spent by Gender & Age Group**  
  - **Total Customers & Revenue by Product Category**  
  - **Total Sales by Location**  
  - **Customer Spending Patterns**  
  - **Monthly Sales Trends**  


![Screenshot 2025-03-05 084908](https://github.com/user-attachments/assets/34e29067-4ce6-498a-b255-125169aaaee1)


## Business Recommendations  

1. **Target Female Customers & Seniors**  
   - Offer personalized promotions and loyalty programs.  
2. **Leverage Top Locations**  
   - Run location-based marketing campaigns in **Vasant Kunj, Lajpat Nagar, and Saket**.  
3. **Win Back Churned Customers**  
   - Provide re-engagement discounts to inactive customers.  
4. **Encourage Occasional Big Spenders**  
   - Offer personalized recommendations for high-value purchases.  
5. **Retain High CLV Customers**  
   - Provide VIP perks, exclusive deals, and early product access.  
6. **Optimize Product Promotions**  
   - Prioritize best-selling categories and seasonal trends.  

## Conclusion  
This analysis helps businesses improve **customer retention, increase sales, and enhance customer engagement** through **data-driven strategies.**  
By leveraging **SQL for in-depth analysis** and **Excel for visualization and interactive dashboards,** businesses can make **data-backed decisions for growth.**  
