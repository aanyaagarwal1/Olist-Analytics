# Olist Marketplace Risk Analysis

A risk-focused analytics project built on 99K+ real Brazilian 
e-commerce orders from Olist. Designed to surface seller risk 
patterns, revenue concentration, and delivery performance — 
framed through a fintech/risk analytics lens.

---

## Key Findings

**Seller Risk**
- 16% of sellers fall into medium/high-risk tiers based on late delivery patterns
- These sellers still process 8.3% of total GMV (R$1.03M+)
- Top 100 sellers (6% of seller base) drive 55% of total GMV — extreme revenue concentration risk

**Delivery Performance**
- AL (Alagoas) shows 25%+ late rate vs single digits in better-performing states
- Logistics risk is concentrated geographically — targeted intervention beats blanket policy

**Order & Payment Analysis**
- R$150-500 orders drive the majority of GMV despite lower volume
- Cancellation rate is flat at 0.63% across all payment methods — payment type is not a meaningful fraud signal

---

## Dashboard

**Seller Risk Overview**
![Seller Risk Overview](BI_dashboard/seller%20risk%20analysis.png)

**Delivery & Order Analysis**
![Delivery & Order Analysis](BI_dashboard/delivery%20and%20order%20analysis.png)

---

## Tools Used

| Layer | Tool |
|-------|------|
| Data Warehouse | Google BigQuery |
| Transformation | SQL (CTEs, window functions) |
| Visualisation | Power BI Desktop |
| Version Control | Git / GitHub |

---

## Project Structure
---

## SQL Analyses

Eight queries covering seller risk segmentation, revenue 
concentration, delivery performance by state, payment method 
analysis, repeat customer rate, order value distribution, 
late delivery trends, and category-level risk.