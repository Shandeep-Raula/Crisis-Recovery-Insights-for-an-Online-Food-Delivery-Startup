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

### 👥 The Customer Situation
 
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
### 🏙️ Where Our Customers Come From
 
| City | Customers | Status |
|---|---|---|
| Bengaluru | 16K | ✅ High contributor (24.75%) |
| Delhi | 8K | ✅ High contributor (14.84%) |
| Mumbai | 8K | 🔵 Medium (— ) |
| Chennai | 5K | 🔵 Medium (10.06%) |
| Hyderabad | 5K | 🔵 Medium (10.15%) |
| Kolkata | 5K | — |
| Pune | 4K | — |
| Ahmedabad | 4K | ⚠️ Low (8.23%) |
 
**Bengaluru is the backbone.** If we're putting resources anywhere, it starts there.
 
### 🔁 Loyalty Breakdown (Ouch)
 
| Segment | Count | Definition |
|---|---|---|
| One-time buyers | 70,799 | Ordered exactly once |
| Occasional | 26,410 | Ordered twice |
| Regular | 7,950 | 3–5 orders |
| VIP | **21** | 6+ orders |
 
Twenty-one VIP customers. That's a dinner party, not a loyalty program. This is probably the single most important thing to fix.
 
---
 
## 📦 Orders & Revenue
 
The headline numbers:
 
| Metric | Value |
|---|---|
| Total orders | 149K |
| Revenue | ₹48.56M |
| Average order value | ₹325.55 |
| Cancelled orders | 11K |
| Cancellation rate | 7.45% |
| Order decline (crisis vs pre) | **68.74%** |
| Discount ratio | 6.01% |
| Cash on delivery (COD) | 47K orders |
| Total items delivered | 685K |
 
**The crisis impact on orders was brutal.** Pre-crisis months were humming along at 22–23K orders/month. Crisis months dropped to 8–9K. And **75.83% of all 149K orders** happened before June — meaning the crisis period only accounts for roughly one in four orders.
 
### 🍽️ What People Are Ordering
 
By revenue, the cuisine leaderboard looks like this:
 
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
 
North Indian and Biryani are the workhorses. Healthy food is way behind — either people aren't ordering it, or we're not marketing it well enough.
 
### ⏰ When People Order
 
Afternoons are king:
 
| Time Slot | Orders |
|---|---|
| Afternoon | ~60K |
| Evening | ~45K |
| Night | ~45K |
 
Every city follows this pattern. If you're planning promotions or staffing up, **12pm–4pm is your golden window**.
 
### 🍟 Top Menu Items by Volume
 
| Item | Quantity |
|---|---|
| Butter Naan | 14,992 |
| Chicken 65 | 13,819 |
| Brownie with Ice Cream | 12,758 |
| Chicken Biryani | 10,286 |
| Cheesy Dip | 9,972 |
| Bonda | 9,143 |
 
Butter Naan is the quiet MVP of the entire menu.
 
---
 
## 🚴 Delivery — Where Things Went Wrong
 
This is probably the root cause of everything else.
 
| Metric | Value |
|---|---|
| Average delivery time | 44.40 min |
| Delayed orders | **91K out of 149K** |
| SLA compliance | **36.16%** |
| Cancelled after delay | 8K |
| Avg delivery distance | 4.49 km |
| Avg time per km | 9.88 min |
 
**Only 36% of orders arrived on time.** The other 64% were delayed. That's not a bad day — that's a structural problem.
 
### ⏱️ How Delivery Time Changed
 
```
Jan–May (pre-crisis):  ~39.5 min  ✅
Jun onward (crisis):   ~60.0 min  🔴
```
 
Delivery times jumped by over 50% the moment the crisis hit and never came back down within the dataset period.
 
### 📊 Delay Severity
 
| Delay Category | Orders |
|---|---|
| On-time | 52K |
| 0–10 min late | 50K |
| 10–20 min late | 26K |
| 20+ min late | 16K |
 
And here's the kicker — **cancellation rate goes from 5.31% for on-time orders to 16.36% for delayed ones**. Slow delivery isn't just annoying, it's actively killing orders.
 
### 🛵 Our Delivery Fleet
 
| Vehicle | Count |
|---|---|
| Scooter | 6.0K |
| Bike | 5.9K |
| Cycle | 2.3K |
| Car | 0.8K |
 
**Workforce mix:**
- Full-time: 50.69%
- Part-time: 29.77%
- Contract: 19.54%
Nearly half the workforce is part-time or contract. That's fine during normal times, but explains why we struggled to scale during the crisis — there's no buffer.
 
---
 
## 🏪 Restaurant Partners
 
- **18,000 active restaurants** across the platform
- Avg partner rating: **4.05**
- Partner cancellation rate: **7.45%**
### ⚠️ High-Risk Partners
 
Some restaurant partners are showing worrying signs — low ratings AND low order volumes is a red flag combo:
 
| Restaurant | Rating | Orders | Status |
|---|---|---|---|
| Annapurna Biryani Adda | 4.05 | 19 | ⚠️ High Risk |
| Annapurna Biryani Cafe | 3.50 | 15 | ⚠️ High Risk |
| Annapurna Biryani Central | 3.60 | 7 | ⚠️ High Risk |
| Annapurna Biryani Bhojanalay | 4.07 | 22 | ✅ Stable |
 
Low-rating partners drag down platform trust. These need intervention — either coaching or offboarding.
 
---
 
## 💬 What Customers Are Saying
 
| Metric | Value |
|---|---|
| Total reviews | 69K |
| Positive reviews | 56.3K (81.73%) |
| Negative reviews | 11.9K (17.28%) |
| Neutral reviews | 0.7K (0.99%) |
| Avg sentiment score | 0.53 |
| Rating drop during crisis | **44.28%** |
| Feedback coverage | 46.14% |
 
### 📉 The Rating Collapse
 
```
Jan:  4.6  ████████████████████
Feb:  4.4  ████████████████████
Mar:  4.7  █████████████████████
Apr:  4.3  ████████████████████
May:  4.5  █████████████████████ ← last good month
Jun:  2.6  ████████████
Jul:  2.7  █████████████
Aug:  2.4  ███████████
Sep:  2.3  ██████████           ← lowest point
```
 
Ratings nearly halved overnight. And they haven't recovered within the data window. This tracks perfectly with the delivery time spike.
 
### 🗺️ City-Level Sentiment
 
| City | Sentiment Score | Avg Rating |
|---|---|---|
| Ahmedabad | 0.54 | 4.07 |
| Kolkata | 0.53 | 4.07 |
| Mumbai | 0.53 | 4.06 |
| Chennai | 0.53 | 4.06 |
| Delhi | 0.52 | 4.05 |
| Bengaluru | 0.52 | 4.05 |
| Hyderabad | 0.52 | 4.04 |
| Pune | 0.52 | **4.03** |
 
Ahmedabad and Kolkata punch above their weight on sentiment. Pune is lagging — worth investigating why.
 
### 🔽 The Trust Funnel
 
```
Total orders          149K  (100%)
↓ Left a review        69K  (46%)
↓ Positive sentiment   56K  (38%)
↓ High rating orders   50K  (33%)
```
 
Only 1 in 3 orders ends in a high rating. That's a lot of unrealised goodwill — and a lot of friction we're not catching in reviews because feedback coverage is only 46%.
 
---
 
## 🚨 What Needs to Happen Next
 
Here's a straight-talking priority list based on what the data is actually saying:
 
### 1. Fix Delivery — Everything Else Depends On It
A 60-minute avg delivery time and 36% SLA compliance isn't a KPI problem, it's an operational emergency. Until delivery is fixed, ratings won't recover, cancellations won't drop, and customers won't come back.
 
### 2. Launch a Real Retention Campaign
83.81% churn with only 21 VIP customers means the loyalty program needs to be rebuilt from the ground up. Consider win-back campaigns for the ~54K customers who churned post-crisis.
 
### 3. Protect Bengaluru
It's our highest-volume city, best contributor, and showing strong recovery signals. Don't spread resources equally — invest disproportionately where traction already exists.
 
### 4. Clean Up the Partner Roster
High-risk restaurants with ratings below 3.6 are a platform trust problem, not just a partner problem. Set minimum thresholds and act on them.
 
### 5. Convert One-Time Buyers
70,799 people ordered once and never came back. A post-first-order engagement sequence (discount, follow-up, recommendation) could meaningfully move the needle without requiring new acquisition spend.
 
### 6. Close the Feedback Gap
Only 46% of orders generate a review. That's a huge blind spot. Push in-app review prompts and incentivise feedback — especially from the 54% who are currently silent.
 
---
 
## 📌 Quick Reference — Key Numbers
 
| What | Number |
|---|---|
| Total customers | 108K |
| Churn rate | 83.81% |
| Revenue | ₹48.56M |
| AOV | ₹325.55 |
| Orders | 149K |
| SLA compliance | 36.16% |
| Avg delivery time | 44.4 min |
| Delayed orders | 91K |
| Avg rating | 4.05 |
| Rating drop | 44.28% |
| Active restaurants | 18K |
| VIP customers | 21 |