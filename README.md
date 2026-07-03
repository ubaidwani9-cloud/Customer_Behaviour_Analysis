# 🛍️ Customer Shopping Behavior Analysis

> Analyzed 3,900 retail transactions to identify a $170K non-subscriber revenue gap and drive loyalty strategy — Python, SQL, Power BI.

![Python](https://img.shields.io/badge/Python-Pandas-blue?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-SQL%20Server%20Management%20Studio-CC2927?logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Dashboard-Power%20BI-F2C811?logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

An end-to-end retail analytics project — from raw transactional data to an interactive dashboard and a set of prioritized business recommendations — built to answer one question: **what actually drives customers to buy, and buy again?**

---

## 📌 Business Problem

A retail company was seeing shifting purchase patterns across demographics, product categories, and channels, but had no structured way to explain *why*. This project answers:

> *"How can the company leverage consumer shopping data to identify trends, improve customer engagement, and optimize marketing and product strategies?"*

---

## 🧰 Tech Stack & Approach

| Stage | Tool | What was done |
|---|---|---|
| Data Cleaning & Feature Engineering | **Python (Pandas)** | Cleaned 3,900 records, imputed missing review ratings by category median, engineered `age_group` and `purchase_frequency_days`, removed redundant fields |
| Structured Analysis | **SQL (SQL Server Management Studio)** | 10 business-question queries covering revenue, segmentation, discounting, and loyalty |
| Visualization | **Power BI** | Interactive dashboard with slicers for subscription, gender, category, shipping type |
| Reporting | **Word / Markdown** | Findings translated into a stakeholder-ready business report with prioritized recommendations |

---

## 📂 Repository Structure

```
customer-shopping-behavior-analysis/
├── data/                          # Raw & cleaned dataset
├── python/
│   └── data_cleaning.ipynb        # Cleaning, feature engineering, DB load
├── sql/
│   └── business_queries.sql       # All 10 analysis queries
├── dashboard/
│   └── customer_dashboard.pbix
├── report/
│   └── Customer_Shopping_Behavior_Analysis_Report.docx
├── presentation/
│   └── Stakeholder_Deck.pptx
├── requirements.txt
└── README.md
```
*(Rename/remove folders above to match what you actually push.)*

---

## 📊 Dataset

- **3,900 transactions**, 18 features, ~1% missing data (handled via category-median imputation)
- **Demographics** — age, gender, location, subscription status
- **Purchase details** — category, amount, season, size, color
- **Behavior** — discount usage, promo codes, purchase frequency, review rating, shipping type

---

## 🔍 Key Findings

| # | Finding | Business Implication |
|---|---|---|
| 1 | Male customers generate **2.1x** the revenue of female customers ($157,890 vs $75,191) | Female segment is underdeveloped — worth targeted investment |
| 2 | **839 customers** used a discount and still spent above average | Discounts don't erode basket size for this business — support targeted, not blanket, discounting |
| 3 | Top-rated products cluster tightly (3.78–3.86 / 5) — Gloves, Sandals, Boots, Hat, Skirt | No single hero product; quality is consistently solid across the range |
| 4 | Express shipping customers spend **$2.02 more** per order on average | Position Express as a premium upsell, not a cost center |
| 5 | Non-subscribers drive **73%** of total revenue on volume alone; avg. spend is nearly identical to subscribers | Subscription value is retention/frequency, not basket size — conversion volume is the real lever |
| 6 | 5 categories (Hat, Sneakers, Coat, Sweater, Pants) are **~50% discount-dependent** | Candidates for a full-price elasticity test |
| 7 | **80%** of customers are already "Loyal," but only **2.1%** are "New" | Acquisition pipeline is critically thin relative to retention |
| 8 | Order volumes are evenly spread across top products in every category (145–171 orders) | Healthy, low-risk demand — no single-SKU dependency |
| 9 | **72%** of repeat buyers (2,518 of 3,476) are *not* subscribed | Largest untapped conversion opportunity identified |
| 10 | Revenue is evenly spread across age groups (spread of only $6,380) | No dominant cohort — favors segmented over mass-market campaigns |

Full methodology, tables, and commentary are in [`report/Customer_Shopping_Behavior_Analysis_Report.docx`](./report/Customer_Shopping_Behavior_Analysis_Report.docx).

---

## 📈 Dashboard

Interactive Power BI dashboard with live filters for **Subscription Status, Gender, Category, and Shipping Type**, surfacing customer count, average purchase amount, average review rating, and revenue/sales breakdowns by category and age group.

<!-- Add a screenshot or GIF here — this is the single highest-impact addition you can make to this README -->
<!-- ![Dashboard Preview](./dashboard/dashboard_preview.png) -->

---

## 💡 Strategic Recommendations

| Priority | Recommendation | Why |
|---|---|---|
| 1 | **Convert repeat buyers to subscribers** | 2,518 customers already buy 5+ times without a subscription — the lowest-cost, highest-conviction conversion pool |
| 2 | **Invest in new-customer acquisition** | New segment is just 2.1% of the base; tomorrow's "Loyal" pipeline depends on it |
| 3 | **Right-size discount policy by product** | Discounts coexist with high spend, but 5 categories are ~50% discount-dependent — test full-price demand first |
| 4 | **Position Express shipping as a premium option** | Express customers already spend more; formalize it as a paid upsell |
| 5 | **Segment marketing by age and gender** | Revenue is balanced by age but skewed 2.1x by gender — tailor campaigns rather than mass-messaging |

---

## 🚀 How to Reproduce

```bash
# 1. Clone the repo
git clone https://github.com/<your-username>/customer-shopping-behavior-analysis.git
cd customer-shopping-behavior-analysis

# 2. Set up environment
pip install -r requirements.txt

# 3. Run the cleaning & feature engineering notebook
jupyter notebook python/data_cleaning.ipynb

# 4. Load the cleaned data into SQL Server and run the analysis queries (via SSMS or sqlcmd)
sqlcmd -S <server_name> -d <database> -i sql/business_queries.sql

# 5. Open the dashboard in Power BI Desktop
open dashboard/customer_dashboard.pbix
```

---

## 🧠 Skills Demonstrated

`Data Cleaning` · `Feature Engineering` · `SQL (Aggregations, Segmentation, Window Functions)` · `Business Analytics` · `Dashboard Design` · `Executive Reporting` · `Strategic Recommendations`

---

## 📬 Contact

**[Your Name]** — [LinkedIn](#) · [Portfolio](#) · [Email](#)
