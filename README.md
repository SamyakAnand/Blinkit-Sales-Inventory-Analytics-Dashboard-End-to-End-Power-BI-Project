# 🟡 **Blinkit Sales & Inventory Analytics Dashboard – End-to-End Power BI Project**

This project is an interactive Power BI dashboard that analyzes **sales performance, outlet behavior, product categories, fat content distribution, and outlet characteristics** for **Blinkit (India's Last Minute App)**.
The dashboard helps stakeholders understand:

* Sales performance across outlets
* Product-level contribution
* Fat content & outlet tier impact on sales
* Item visibility, ratings, and inventory distribution
* Outlet size and outlet establishment trends

---

# 🧾 **Table of Contents**

1. [📌 Project Overview](#-project-overview)
2. [🎯 Objectives](#-objectives)
3. [📂 Dataset Description](#-dataset-description)
4. [🛠️ Data Preparation & Cleaning](#️-data-preparation--cleaning)
5. [📐 Data Modeling](#-data-modeling)
6. [📊 Dashboard Features](#-dashboard-features)
7. [📈 Key Insights](#-key-insights)
8. [🎨 UI/UX & Theme](#-uiux--theme)
9. [🧮 DAX Measures Used](#-dax-measures-used)
10. [📦 Project Structure](#-project-structure)
11. [🚀 How to Use](#-how-to-use)
12. [💡 Future Enhancements](#-future-enhancements)
13. [📧 Contact](#-contact)

---

# 📌 **Project Overview**

This **Blinkit Sales Dashboard** provides a 360° analysis of the company's:

* Total sales
* Total items
* Average rating & average sales
* Product category performance
* Fat content distribution
* Outlet type and outlet tier sales
* Inventory visibility
* Outlet establishment timeline

It allows management to quickly identify **top-performing outlets**, understand consumer trends, and optimize product mix.

![Blinkit Dashboard](Blinkit%20Dashboard%20image.png)

---

# 🎯 **Objectives**

✔ Analyze Blinkit's overall sales performance
✔ Compare outlet types (Grocery Store, Supermarket Type1/2/3)
✔ Identify which **item categories** contribute most to revenue
✔ Evaluate effect of **fat content** (Low Fat vs Regular)
✔ Analyze outlet size (Small, Medium, High) contribution
✔ Understand outlet tier-based revenue
✔ Track historical sales based on **year of establishment**
✔ Provide slicers to filter by outlet location, size, and item type

---

# 📂 **Dataset Description**

Dataset fields include:

### 🔹 **Sales Metrics**

* Item MRP
* Item Outlet Sales
* Item Visibility
* Item Rating

### 🔹 **Outlet Details**

* Outlet Type
* Outlet Tier
* Outlet Size (Small, Medium, High)
* Outlet Establishment Year

### 🔹 **Product Details**

* Item Type
* Fat Content
* Item Identifier
* No. of Items

---

# 🛠️ **Data Preparation & Cleaning**

Performed in **Power Query**:

✔ Removed duplicates
✔ Handled missing values
✔ Standardized naming conventions
✔ Converted outlet years into date hierarchy
✔ Created clean categories for:

* Fat Content
* Item Types
* Outlet Tier
* Outlet Size
  ✔ Ensured numeric columns are correctly typed

---

# 📐 **Data Modeling**

A structured star schema:

### **Fact Table**

* Fact_Sales

### **Dimension Tables**

* Dim_Item
* Dim_Outlet
* Dim_Location
* Dim_Size
* Dim_FatContent
* Dim_ItemType
* Dim_Date

Relationships: **One-to-Many**, Single Direction.

---

# 📊 **Dashboard Features**

Your dashboard contains the following visual sections:

---

## ⭐ **Top KPI Cards**

* **$1.20M Total Sales**
* **$141 Average Sales**
* **8523 Number of Items**
* **3.9 Average Rating**

---

## 🗂️ **Filter Panel (Left Sidebar)**

Users can filter the entire dashboard by:

* Outlet Location Type
* Outlet Size
* Item Type

---

## 🟡 **Charts & Visuals**

### 🔹 **Fat Content Distribution**

* Donut chart comparing **Low Fat vs Regular** sales
* Fat content breakdown by outlet tier

### 🔹 **Item Type Performance**

Bar chart showing sales contribution of top item types:

* Fruits & Vegetables
* Snack Foods
* Household
* Frozen Foods
* Dairy
* Meat
* Soft Drinks
  … and more

### 🔹 **Outlet Establishment Trend (Year-Wise)**

Shows how sales differ by outlet establishment year (2000–2022).

### 🔹 **Outlet Size Contribution**

Donut chart:

* High size outlets: **$907K**
* Medium size outlets: **$445K**
* Small size outlets: **$249K**

### 🔹 **Outlet Location Sales**

Tier-based bar chart:

* Tier 3 – $472K
* Tier 2 – $393K
* Tier 1 – $336K

### 🔹 **Outlet Type Comparison Table**

Metrics:

* Total Sales
* No. of Items
* Average Rating
* Average Sales
* Item Visibility

---

# 📈 **Key Insights**

### 💰 **Sales Insights**

* Highest revenue comes from **Supermarket Type1** outlets (~$787K).
* Grocery stores contribute **only ~$152K**, making them least performing.

### 🏪 **Outlet Size Insights**

* **High-size outlets dominate** with ~$907K in sales.
* Medium outlets follow with ~$445K.

### 🧈 **Fat Content Insights**

* **Regular items contribute more** than Low Fat in most tiers.

### 🛒 **Item Category Insights**

* Top categories with highest sales:

  * Fruits & Vegetables – $0.18M
  * Snack Foods – $0.18M
  * Household – $0.14M

### ⭐ **Rating Insights**

* Average product rating is **3.9**, indicating decent customer satisfaction.

### 📍 **Location Insights**

* Tier 3 outlets are **top performers**, generating the most revenue.

### 📅 **Outlet Establishment Insights**

* Older outlets (2000–2005) show stronger sales compared to newer ones.

---

# 🎨 **UI/UX & Theme**

The dashboard uses a **Blinkit-inspired yellow & green theme** for branding.

### Visual decisions include:

* Clean sidebar filter panel
* Rounded KPI cards
* Consistent shadows & borders
* High-contrast yellow-green accents
* Modern, minimalistic card layout
* Uniform spacing and visual alignment

---

# 🧮 **DAX Measures Used**

```DAX
Total Sales = SUM(Fact_Sales[Outlet_Sales])

Avg Sales = AVERAGE(Fact_Sales[Outlet_Sales])

No of Items = DISTINCTCOUNT(Fact_Sales[Item_Identifier])

Avg Rating = AVERAGE(Fact_Sales[Rating])

Total by Fat Content = SUM(Fact_Sales[Outlet_Sales])
```

Additional custom measures created for item visibility, outlet ranking, and tier-wise comparisons.

---

# 📦 **Project Structure**

```
Blinkit-Sales-Dashboard/
│
├── data/
│   └── blinkit_data.csv
│
├── pbix/
│   └── Blinkit Dashboard.pbix
│
├── images/
│   └── dashboard_screenshot.png
│
└── README.md
```

---

# 🚀 **How to Use**

1. Download the repository
2. Open the `.pbix` file using **Power BI Desktop**
3. Use the filter panel to refine analysis
4. Explore item categories, outlet types, and outlet tiers
5. Hover over visuals for detailed tooltips

---

# 💡 **Future Enhancements**

🔸 Add forecasting for future sales using AI visuals
🔸 Create drill-through pages for outlet-level deep dives
🔸 Add R/Python scripts for advanced analytics
🔸 Real-time data updates using Power BI Gateway

---

# 📧 Contact

If you want help building similar dashboards or enhancing this one:

**Samyak Anand**
📩 *your-email*
🔗 LinkedIn / GitHub

---

If you'd like, I can also prepare:

✅ A LinkedIn post for this dashboard
✅ A portfolio-ready case study
✅ README with embedded images
Just tell me!"# Blinkit-Sales-Inventory-Analytics-Dashboard-End-to-End-Power-BI-Project" 
