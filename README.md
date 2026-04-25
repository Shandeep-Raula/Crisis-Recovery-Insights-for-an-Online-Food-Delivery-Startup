#  **Crisis Recovery Insights for an Online Food Delivery Startup**

####  **Domain**: Food Delivery & Consumer Analytics  
####  **Function**: Crisis Recovery & Business Strategy  

## Company Overview
**QuickBite Express** is a Bengaluru-based **food-tech startup** founded in **2020**, connecting customers with nearby restaurants and cloud kitchens.

## Problem Statement
In June 2025, QuickBite faced a major crisis. **A viral social media** incident involving food
safety violations at partner restaurants, combined with a week-long delivery outage during
the monsoon season, triggered massive customer backlash. Competitors capitalized with
aggressive campaigns, worsening the situation.

## ER Diagram
![ER Diagram of Project](https://github.com/Shandeep-Raula/Crisis-Recovery-Insights-for-an-Online-Food-Delivery-Startup/blob/main/Figure/ER_Diagram.png)


## Tools & Technolgies 
- Snowflake, SQL
- Power Bi , DAX
- Power Point

## Insights

### 📅 How We're Reading the Data
 
| Phase | Period |
|---|---|
| ✅ Pre-Crisis | On or before 31 May 2025 |
| 🔴 Crisis | From 1 June 2025 onward |
 
---
 
## 👥 1. Customer Health
 
Let's be honest — **83.81% churn** is not a metric you want to put in a slide deck. But here's what it actually looks like month by month:
 
```
Jan   ████████████████████  20.4K  ← peak
Feb   ████████████████      16.6K
Mar   ███████████████       15.8K
Apr   ████████████          12.1K
May   ███████               7.4K
Jun   ████                  4.6K   ← crisis begins
Jul   ████                  5.1K
Aug   ███                   4.7K
Sep   █                     1.1K   ← absolute low
Nov   ████                  3.4K
Dec   ████████████████      16.5K  ← recovery signal 🌱
```
 
**What this tells us:**
- We had **86.8K customers before** the crisis. Only **32.4K stuck around** after.
- During the crisis, we only brought in **13.9K new customers** — not nearly enough to offset the loss.
- The December rebound to **16.5K** is genuinely encouraging, but we're still miles from where we were.
### 🏙️ City Contribution, Revenue & Cancellation Rate
 
| City | Customers | Revenue | Contribution | Cancellation Rate | Status |
|---|---|---|---|---|---|
| Bengaluru | 16K | ₹12M | 24.75% | 7.49% | ✅ High |
| Delhi | 8K | ₹7M | 14.84% | 7.33% | ✅ High |
| Mumbai | 8K | ₹7M | 14.80% | 7.41% | ✅ High |
| Hyderabad | 5K | ₹5M | 10.15% | 7.52% | 🔵 Medium |
| Chennai | 5K | ₹5M | 10.06% | 7.48% | 🔵 Medium |
| Kolkata | 5K | ₹4M | 9.18% | 7.30% | ⚠️ Low |
| Ahmedabad | 4K | ₹4M | 8.23% | 7.73% | ⚠️ Low |
| Pune | 4K | ₹4M | 8.00% | 7.37% | ⚠️ Low |
 
> **Bengaluru is the backbone** — nearly ₹12M in revenue and 24.75% of all orders. That's double the next city. Ahmedabad has both the lowest contribution AND the highest cancellation rate — a problem that compounds itself.
 
### 🔁 Loyalty Breakdown (Ouch)
 
| Segment | Count | Definition |
|---|---|---|
| One-time buyers | 70,799 | Ordered exactly once |
| Occasional | 26,410 | Ordered twice |
| Regular | 7,950 | 3–5 orders |
| **VIP** | **21** | **6+ orders** |
 
Twenty-one VIP customers. That's a dinner party, not a loyalty program. This is probably the single most important thing to fix long-term.
 
### 🕐 City × Time-of-Day Order Distribution
 
| City | Afternoon | Evening | Night |
|---|---|---|---|
| Bengaluru | 14,860 | 10,962 | 11,097 |
| Delhi | 8,869 | 6,712 | 6,557 |
| Mumbai | 8,838 | 6,604 | 6,631 |
| Chennai | 6,095 | 4,479 | 4,426 |
| Hyderabad | 6,065 | 4,554 | 4,516 |
| Kolkata | 5,487 | 4,122 | 4,087 |
| Pune | 4,855 | 3,602 | 3,477 |
| Ahmedabad | 4,859 | 3,662 | 3,750 |
 
Afternoons dominate across every city (~60K total vs ~45K evenings and ~45K nights). Bengaluru's afternoon slot alone is larger than Delhi's entire day.
 
---
 
## 📦 2. Orders & Revenue
 
| Metric | Value |
|---|---|
| Total orders | 149K |
| Revenue | ₹48.56M |
| Average order value (AOV) | ₹325.55 |
| Cancelled orders | 11K |
| Cancellation rate | 7.45% |
| Order decline % (crisis vs pre) | **68.74%** |
| Discount ratio | 6.01% |
| Cash on delivery (COD) | 47K orders |
| Total quantity delivered | 685K |
| Avg customer rating | 4.05 |
| Avg sentiment score | 0.53 |
 
**The crisis impact was brutal.** Pre-crisis months ran at 22–23K orders/month. Crisis months dropped to 8–9K. And **75.83% of all 149K orders** happened before June — the crisis period accounts for roughly 1 in 4 orders only.
 
### 🍽️ Revenue by Cuisine Type
 
```
North Indian   ████████████████████  ₹9.6M  🏆
Biryani        ███████████████       ₹7.3M
South Indian   ███████████████       ₹7.3M
Chinese        ██████████████        ₹7.2M
Pizza          ████████████          ₹6.0M
Fast Food      █████████             ₹4.7M
Desserts       ████████              ₹4.0M
Healthy        █████                 ₹2.5M
```
 
North Indian dominates. The gap between North Indian (₹9.6M) and Healthy (₹2.5M) is nearly 4x — either people aren't ordering healthy food, or we're not surfacing it properly.
 
---
 
## 🍟 3. Full Menu Performance — High-Demand Items
 
Every item ranked by order quantity across the platform. This is the complete list from the dashboard.
 
### 🏆 Top 20 Items by Quantity
 
| Rank | Item | Quantity |
|---|---|---|
| 1 | Sweet Lassi | **47,561** |
| 2 | Veg Cutlet | **20,977** |
| 3 | Gobi Manchurian | **20,848** |
| 4 | Paneer Tikka | **20,683** |
| 5 | Masala Chai | **20,571** |
| 6 | Cold Coffee | **20,223** |
| 7 | Fresh Lime Soda | **20,414** |
| 8 | Veg Biryani | **19,002** |
| 9 | Paneer Biryani | **18,820** |
| 10 | Idli Sambar | **15,391** |
| 11 | Butter Naan | **14,992** |
| 12 | Fish Fry | **13,942** |
| 13 | Chicken Tikka | **13,862** |
| 14 | Chicken 65 | **13,819** |
| 15 | Egg Fried Rice | **13,742** |
| 16 | Brownie with Ice Cream | **12,758** |
| 17 | French Fries | **10,804** |
| 18 | Mutton Biryani | **10,386** |
| 19 | Egg Biryani | **10,377** |
| 20 | Chicken Biryani | **10,286** |
 
> **Sweet Lassi at 47,561** is the runaway #1 — nearly **2.4x the next item**. Nobody saw that coming. It's a drink, not a meal, and it's outselling everything else by a mile. Bundle it. Promote it. Make it the face of the platform.
 
### 📋 Complete Item Catalogue (A–Z with quantities)
 
| Item | Qty | Item | Qty |
|---|---|---|---|
| Bonda | 9,143 | Paneer Biryani | 18,820 |
| Brownie with Ice Cream | 12,758 | Paneer Burger | 4,784 |
| Butter Chicken | 4,652 | Paneer Butter Masala | 5,031 |
| Butter Naan | 14,992 | Paneer Kathi Roll | 4,898 |
| Cheesy Dip | 9,972 | Paneer Protein Bowl | 2,990 |
| Chicken 65 | 13,819 | Paneer Tikka | 20,683 |
| Chicken Biryani | 10,286 | Paneer Tikka Pizza | 4,994 |
| Chicken Burger | 8,051 | Pepperoni Pizza | 5,959 |
| Chicken Caesar Salad | 2,652 | Peri-Peri Fries | 6,685 |
| Chicken Fried Rice | 7,699 | Plain Dosa | 6,197 |
| Chicken Hakka Noodles | 7,603 | Rasmalai | 5,522 |
| Chicken Kathi Roll | 3,915 | Rava Idli | 9,292 |
| Chicken Protein Bowl | 4,705 | Schezwan Fried Rice | 9,338 |
| Chicken Puff | 6,267 | Schezwan Veg Noodles | 9,672 |
| Chicken Tikka | 13,862 | Sweet Lassi | **47,561** |
| Chicken Tikka Masala | 4,591 | Tandoori Roti | 6,351 |
| Chicken Tikka Pizza | 6,125 | Vada | 9,185 |
| Chicken Wings | 6,727 | Veg Biryani | 19,002 |
| Chole Masala | 4,945 | Veg Buddha Bowl | 2,886 |
| Cold Coffee | 20,223 | Veg Burger | 4,973 |
| Curd Rice | 6,221 | Veg Caesar Salad | 4,139 |
| Dal Tadka | 4,966 | Veg Cutlet | 20,977 |
| Egg Biryani | 10,377 | Veg Fried Rice | 9,300 |
| Egg Dosa | 6,077 | Veg Hakka Noodles | 9,376 |
| Egg Fried Rice | 13,742 | Veg Pulao | 6,004 |
| Egg Noodles | 7,775 | Veg Wrap | 4,876 |
| Egg Roll | 3,974 | Veggie Supreme Pizza | 5,025 |
| Falooda | 5,331 | Watermelon Juice | 4,041 |
| Fish Fry | 13,942 | French Fries | 10,804 |
| Fresh Lime Soda | 20,414 | Garlic Naan | 6,493 |
| Fresh Orange Juice | 7,028 | Gobi Manchurian | 20,848 |
| Greek Salad | 4,203 | Gulab Jamun | 5,459 |
| Idli Sambar | 15,391 | Kadai Paneer | 5,134 |
| Laccha Paratha | 6,349 | Margherita Pizza | 4,843 |
| Masala Chai | 20,571 | Masala Dosa | 6,297 |
| Mutton Biryani | 10,386 | Mutton Rogan Josh | 4,597 |
| Mysore Masala Dosa | 6,177 | | |
 
### 🔍 Menu Insights That Actually Matter
 
**Beverages are carrying the menu.** Sweet Lassi (47,561), Cold Coffee (20,223), Fresh Lime Soda (20,414), and Masala Chai (20,571) are all in the top 10. Drinks are not an afterthought here — they're a core revenue engine being undermarketed.
 
**Veg is punching way above its weight.** Gobi Manchurian (20,848), Paneer Tikka (20,683), Veg Cutlet (20,977), Veg Biryani (19,002) all outsell most non-veg dishes. The veg vs. non-veg split is far closer than most food delivery platforms expect.
 
**Biryani is a category in itself.** Veg (19,002) + Paneer (18,820) + Egg (10,377) + Mutton (10,386) + Chicken (10,286) = **68,871 combined biryani orders**. No single other cuisine category comes close in raw volume.
 
**Protein bowls and salads are the underperformers.** Chicken Caesar Salad (2,652), Chicken Protein Bowl (4,705), Paneer Protein Bowl (2,990), and Veg Buddha Bowl (2,886) sit at the bottom. The wellness category has a major discoverability problem.
 
**Butter Naan (14,992) is the silent workhorse.** It's ordered as a standalone and as a side to almost everything North Indian. It's the quiet glue of the top revenue cuisine.
 
---
 
## 🚴 4. Delivery — Where Things Went Wrong
 
This is the root cause of most other problems on this dashboard.
 
| Metric | Value |
|---|---|
| Average delivery time | 44.40 min |
| Delayed orders | **91K out of 149K** |
| SLA compliance | **36.16%** |
| Cancelled after delay | 8K |
| Avg delivery distance | 4.49 km |
| Avg time per km | 9.88 min |
| Avg delivery delay | 5.71 min |
 
Only **36% of orders arrived on time.** The other 64% were delayed. That's not a rough patch — that's structural.
 
### ⏱️ How Delivery Time Changed
 
```
Jan–May (pre-crisis):  ~39.5 min  ✅ within acceptable range
Jun onward (crisis):   ~60.0 min  🔴 over SLA by 52%
```
 
Delivery times jumped the moment the crisis hit and never came back down within the data window.
 
### 📊 Delay Severity Breakdown
 
| Category | Orders |
|---|---|
| On-time | 52K |
| 0–10 min late | 50K |
| 10–20 min late | 26K |
| 20+ min late | 16K |
 
### 💥 The Delivery–Cancellation Link (The Smoking Gun)
 
```
On-time deliveries (≤40 min):   Cancellation rate =  5.31%  ✅
Delayed deliveries (60+ min):   Cancellation rate = 16.36%  🔴
```
 
**Cancellation rate triples when delivery is late.** The scatter plot shows a clean inflection at ~55–60 minutes — beyond that, cancellations spike hard. Every operational decision should target keeping delivery under 55 minutes as a non-negotiable.
 
### 🛵 Fleet & Workforce
 
| Vehicle | Count | Employment Type | Share |
|---|---|---|---|
| Scooter | 6,000 | Full-time | 50.69% |
| Bike | 5,900 | Part-time | 29.77% |
| Cycle | 2,300 | Contract | 19.54% |
| Car | 800 | | |
 
Nearly half the workforce is part-time or contract. That's exactly why the platform couldn't absorb the crisis — there was no buffer capacity to call on.
 
---
 
## 🏪 5. Restaurant Partners
 
| Metric | Value |
|---|---|
| Active restaurants | 18K |
| Avg partner rating | 4.05 |
| Partner cancellation rate | 7.45% |
| Avg preparation time | 24.19 min |
 
### ⚠️ High-Risk Partners
 
| Restaurant | Rating | Orders | Revenue | Status |
|---|---|---|---|---|
| Annapurna Biryani Adda | 4.05 | 19 | ₹5,486 | ⚠️ High Risk |
| Annapurna Biryani Cafe | 3.50 | 15 | ₹6,212 | ⚠️ High Risk |
| Annapurna Biryani Central | 3.60 | 7 | ₹2,659 | ⚠️ High Risk |
| Annapurna Biryani Bhojanalay | 4.07 | 22 | ₹7,644 | ✅ Stable |
 
Restaurants rated below 3.6 with fewer than 20 orders are operating below any reasonable quality threshold. These need active intervention — quality coaching or offboarding.
 
---
 
## 💬 6. Customer Sentiment & Trust
 
| Metric | Value |
|---|---|
| Total reviews | 69K |
| Positive reviews | 56.3K **(81.73%)** |
| Neutral reviews | 0.7K (0.99%) |
| Negative reviews | 11.9K **(17.28%)** |
| Avg sentiment score | 0.53 |
| Avg customer rating | 4.05 |
| Rating drop % | **44.28%** |
| Feedback coverage | **46.14%** |
 
### 😊 Customer Sentiment Breakdown
 
```
Positive  ████████████████████████████████████████  56.3K  (81.73%)
Negative  ████████                                  11.9K  (17.28%)
Neutral   ▌                                          0.7K   (0.99%)
```
 
The majority of people who review are positive — but only **46% of orders generate any review at all**. We're making decisions with half the data we should have. The 54% who say nothing are the silent churn risk.
 
### 📉 The Rating Collapse
 
```
Jan   4.6  ████████████████████████
Feb   4.4  ████████████████████████
Mar   4.7  █████████████████████████  ← all-time high
Apr   4.3  ████████████████████████
May   4.5  █████████████████████████  ← last good month
Jun   2.6  ██████████████
Jul   2.7  ███████████████
Aug   2.4  █████████████
Sep   2.3  ████████████              ← lowest point
```
 
Ratings nearly halved overnight in June — perfectly mirroring the delivery time spike. The platform went from a 4.5+ rated service to a 2.3-rated one in a single month.
 
### 🗺️ City-Level Sentiment Heatmap
 
| City | Reviews | Sentiment Score | Avg Rating |
|---|---|---|---|
| Ahmedabad | 5,559 | **0.54** | **4.07** |
| Kolkata | 6,408 | 0.53 | 4.07 |
| Mumbai | 10,079 | 0.53 | 4.06 |
| Chennai | 6,970 | 0.53 | 4.06 |
| Delhi | 10,318 | 0.52 | 4.05 |
| Bengaluru | 17,072 | 0.52 | 4.05 |
| Hyderabad | 6,884 | 0.52 | 4.04 |
| Pune | 5,535 | 0.52 | **4.03** |
 
Ahmedabad leads on sentiment despite being a low revenue contributor — people like the food, delivery just keeps letting them down. Pune has the lowest rating of any city and deserves a closer look.
 
### 🔽 The Trust Funnel
 
```
Total orders          149K  ██████████████████████████  100%
Left a review          69K  ███████████████              46%
Positive sentiment     56K  █████████████                38%
High rating orders     50K  ████████████                 33%
```
 
Only **1 in 3 orders** ends in a high rating. That's a lot of unrealised goodwill sitting in the 54% who never left any feedback at all.
 
---
 
## 🚨 7. What Needs to Happen Next
 
### Priority 1 — Fix Delivery (Everything Else Depends On It)
A 60-minute average delivery time and 36% SLA compliance is an operational emergency. Cancellations triple beyond 55 minutes — that's the hard engineering target. Nothing else on this list matters until delivery is predictable.
 
**Quick wins:**
- Set a 55-minute hard SLA as a non-negotiable platform standard
- Investigate the root cause of the June delivery time spike
- Convert top contract riders to part-time for critical peak city-time slots
### Priority 2 — Win Back Lapsed Customers
83.81% churn means ~54K customers churned post-crisis. A targeted win-back campaign with a "we've fixed delivery" message and a first-order incentive could recover a meaningful slice without new acquisition spend.
 
### Priority 3 — Double Down on Bengaluru, Delhi, and Mumbai
Three cities = 54.39% of all orders and the majority of revenue. Invest disproportionately here rather than spreading resources evenly across 8 cities.
 
### Priority 4 — Make Sweet Lassi a Brand Moment
47,561 orders makes it the #1 item by a factor of 2.4x. That's a marketing story hiding in plain sight. Bundle it with biryani (the most popular cuisine category overall), feature it in campaigns, and use it as an acquisition hook.
 
### Priority 5 — Bundle Beverages with Biryani
Beverages and Biryani are the two biggest demand categories independently. They're almost never bundled in promotions. Fixing this alone could meaningfully lift AOV from ₹325.55.
 
### Priority 6 — Clean Up High-Risk Restaurant Partners
Partners rated below 3.6 with fewer than 20 orders drag down platform trust. Set minimum thresholds and enforce them. The Annapurna Biryani cluster is the obvious first test case.
 
### Priority 7 — Close the Feedback Gap
46% feedback coverage means half of all customer experiences go unrecorded. Push post-delivery review prompts more aggressively. Getting to 65–70% coverage would transform operational visibility.
 
### Priority 8 — Build a Real Loyalty Program
21 VIP customers is not a loyalty program. Build tiered rewards that make the 2nd, 3rd, and 4th order feel earned. The 70,799 one-time buyers are where the revenue is hiding.
 
---
 
## 📌 Quick Reference — All Key Numbers
 
| Metric | Value |
|---|---|
| Total customers | 108K |
| Churn rate | 83.81% |
| Pre-crisis customers | 86.8K |
| Post-crisis customers | 32.4K |
| New customers (crisis) | 13.9K |
| Revenue | ₹48.56M |
| AOV | ₹325.55 |
| Total orders | 149K |
| Cancelled orders | 11K |
| Cancellation rate | 7.45% |
| Order decline % | 68.74% |
| Delayed orders | 91K |
| SLA compliance | 36.16% |
| Avg delivery time | 44.4 min |
| On-time cancel rate | 5.31% |
| Late cancel rate | 16.36% |
| Active restaurants | 18K |
| Avg partner rating | 4.05 |
| Total reviews | 69K |
| Positive sentiment | 81.73% (56.3K) |
| Negative sentiment | 17.28% (11.9K) |
| Neutral sentiment | 0.99% (0.7K) |
| Avg customer rating | 4.05 |
| Rating drop | 44.28% |
| Feedback coverage | 46.14% |
| VIP customers | **21** |
| #1 menu item | Sweet Lassi (47,561) |
| Top cuisine (revenue) | North Indian (₹9.6M) |
| Top city (revenue) | Bengaluru (₹12M) |
| Highest cancel rate city | Ahmedabad (7.73%) |
| Lowest cancel rate city | Kolkata (7.30%) |
| Best sentiment city | Ahmedabad (0.54 / 4.07) |
| Lowest rated city | Pune (4.03) |
 
---
 
## 🗂️ Data Dictionary
 
| Term | Meaning |
|---|---|
| ADT | Average Delivery Time |
| ADD | Average Delivery Delay |
| AOV | Average Order Value |
| APT | Average Preparation Time |
| SLA | Service Level Agreement (on-time delivery target) |
| COD | Cash on Delivery |
| Sentiment Score | 0–1 scale; higher = more positive |
| Pre-crisis | On or before 31 May 2025 |
| Crisis | From 1 June 2025 onward |
| High Risk Partner | Low rating + low order volume combination |
| VIP Customer | 6 or more lifetime orders |