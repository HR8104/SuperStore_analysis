# 🏬 Superstore Sales Analysis (End-to-End Data Analytics Project)

## 📌 Project Overview
This project performs **end-to-end data analysis** on the Global Superstore dataset using  
**Python, SQL (MySQL), and Power BI** to uncover actionable business insights related to
sales performance, profitability, regions, categories, sub-categories, discounts, and seasonality.

The project demonstrates **real-world Data Analyst skills** required for internships and entry-level roles.

---

## 📂 Project Structure
SUPERSTORE_ANALYSIS/
│
├── dashboard/
│ └── sales_analysis.pbix # Power BI interactive dashboard
│
├── data/
│ └── superstore.csv # Raw dataset
│
├── notebooks/
│ └── eda.ipynb # Python EDA & visualization
│
├── sql/
│ └── sales_analysis.sql # Complete SQL analysis queries


---

## 🧰 Tools & Technologies
- **Python** (pandas, matplotlib, seaborn)
- **MySQL** (SQL analysis, data ingestion)
- **Power BI** (DAX, interactive dashboards)
- **Jupyter Notebook**
- **Git & GitHub**

---

## 📊 Dataset
**Global Superstore Dataset**
- ~9,994 records
- Order, customer, product, sales, profit, discount, and regional data
- Widely used for business analytics and BI projects

---

## 🧪 Python Analysis (EDA)
Performed in `notebooks/eda.ipynb`:
- Data cleaning & preprocessing
- Feature engineering (Year, Month, Profit Margin)
- Exploratory Data Analysis (EDA)
- Sales & profit distribution
- Sales vs profit relationship
- Category, sub-category, region, and seasonal analysis

---

## 🗄️ SQL Analysis (MySQL)
Performed in `sql/sales_analysis.sql`:
- Data ingestion from CSV into MySQL
- Overall business KPIs
- Category & sub-category profitability analysis
- Loss-making product identification
- Region-wise performance analysis
- Monthly sales & profit trends
- Discount impact analysis
- Window functions (RANK) for advanced insights

---

## 📈 Power BI Dashboard
Built using `dashboard/sales_analysis.pbix`:
### Dashboard Highlights:
- **KPI Cards**: Total Sales, Total Profit, Profit Margin %
- **Profit by Sub-Category** (loss identification)
- **Region-wise Sales & Profit**
- **Profit by Category**
- **Monthly Sales Trend**
- Interactive slicers (Year, Region, Category)

---

## 🔍 Key Business Insights
- Technology is the **most profitable category**
- Furniture category shows **low profitability**
- Sub-categories **Tables, Bookcases, Supplies** incur losses
- West region performs best; Central region underperforms
- Sales peak during **September and November**
- High discounts often lead to **lower or negative profits**

---

## 💡 Business Recommendations
- Optimize pricing and discount strategy for loss-making sub-categories
- Focus on **profit margin**, not just sales volume
- Replicate West region strategies in weaker regions
- Plan inventory and marketing around seasonal demand

---

## 🚀 Skills Demonstrated
- End-to-end data analysis workflow
- SQL querying & optimization
- Business-focused data storytelling
- Dashboard design & KPI reporting
- Cross-tool consistency (Python ↔ SQL ↔ Power BI)

---

## 👤 Author
**Hitendra**  
Aspiring Data Analyst  
Skills: Python | SQL | Power BI | Data Visualization | EDA

---

## 📬 How to Use
1. Explore EDA in `notebooks/eda.ipynb`
2. Run SQL queries from `sql/sales_analysis.sql`
3. Open `dashboard/sales_analysis.pbix` in Power BI Desktop
