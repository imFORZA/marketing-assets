# Customer Math Worksheet

Six steps, one calculator. Work top to bottom: each answer feeds the next line. When you're done, copy the answers into [`ONE-PAGE-MARKETING-PLAN.md`](ONE-PAGE-MARKETING-PLAN.md).

Each step shows the fictional Marlowe & Voss Family Law numbers from [`EXAMPLE-marlowe-voss-family-law.md`](EXAMPLE-marlowe-voss-family-law.md) so you can check your arithmetic against a finished answer.

## Two rules before you start

**The rounding rule.** Round customers, leads, and visits **up** to the next whole number. Half a customer doesn't pay, so 62.5 leads becomes 63. Before you round up, round the division result to 9 decimal places. That stops a calculator or spreadsheet from turning an exact answer like 25.000000001 into 26. The Marketing Plan Builder and the Google Sheet use the same rule, so your hand-built plan will match theirs.

**The placeholder rule.** If you don't know a rate yet, use a placeholder, write "placeholder" next to it, and write the date you'll replace it. See [Placeholders](#placeholders) below for which number to use. Never invent your revenue goal or your first-year customer value. Those two have to be yours.

## Step 1: New-customer revenue goal

New-customer revenue, not total revenue. Repeat customers, renewals, and signed contracts are real revenue, but they aren't what the marketing plan is for.

**Where it comes from:** your revenue target for the next 12 months (or last year's revenue plus the growth you want), minus what you expect from customers you already have.

```
Total revenue target, next 12 months:                         $__________
Minus revenue expected from customers you already have:     - $__________
= New-customer revenue goal                            (A)    $__________
```

Marlowe & Voss (fictional): $900,000 − $600,000 = **$300,000**.

## Step 2: First-year customer value and customers needed

First-year value, not lifetime value. Lifetime value flatters your budget unless you have years of clean data. First-year value is conservative, checkable, and it's the money that pays for the coming year's marketing.

**Where it comes from:** your billing or invoicing system. Pull the customers who started in the last 12 to 24 months, add up everything each one paid in their first 12 months (initial purchase, setup, monthly fees, follow-on orders, add-ons), and divide by the number of customers. If your customers fall into clearly different tiers, run the math for the tier you're trying to win. Your ideal customer profile (see [`../01-icp/`](../01-icp/)) tells you which tier that is.

```
First-year customer value                              (B)    $__________
Customers needed = A ÷ B, rounded up                   (C)     __________
```

Marlowe & Voss (fictional): $300,000 ÷ $12,000 = **25 new clients**.

## Step 3: Close rate and leads needed

A lead is any person who took a real step toward buying: submitted a form, called, booked a consult, started a chat, requested a quote. Pick the definition that fits your business and use it every month. An online store uses checkout starts instead of leads (see [By business type](#by-business-type)).

**Where it comes from:** closed-won deals in your CRM against the leads created in the same period, over the last 6 to 12 months. In a free CRM, the deals pipeline report shows this by source. No CRM? Your inbox, call log, and calendar are the CRM: count the inquiries in a 90-day window and count the ones that paid you.

```
Close rate = customers ÷ leads                         (D)     _______%    [ ] measured  [ ] placeholder until ________
Leads needed = C ÷ D, rounded up                       (E)     __________
```

Marlowe & Voss (fictional): a lead is a booked consultation, and the consult-to-signed rate is 40%. 25 ÷ 0.40 = 62.5, rounded up to **63 booked consultations**.

## Step 4: Conversion rate and visits needed

**Where it comes from:** Google Analytics 4. First make sure your lead actions (form submissions, phone clicks, booking completions) are set up as key events. Then open **Reports > Engagement > Landing page** and divide key events by sessions for the pages where people actually convert: service pages, the contact page, the booking page. Leave your blog out of it. For a Google Business Profile, the Performance tab reports calls, messages, direction requests, and website clicks, so you can work out a profile-view-to-action rate the same way.

```
Conversion rate = leads ÷ visits                       (F)     _______%    [ ] measured  [ ] placeholder until ________
Visits needed per year = E ÷ F, rounded up             (G)     __________
Visits needed per month = G ÷ 12, rounded up           (H)     __________
```

Marlowe & Voss (fictional): a 2% booking rate on practice-area pages. 63 ÷ 0.02 = **3,150 visits a year**, and 3,150 ÷ 12 = 262.5, rounded up to **263 a month**.

## Step 5: Split the visits across channels

Three to five channels is the ceiling for a small team. Choose them by how many qualified visits each one can realistically deliver, and put one person's name next to each.

**How to split:** give each channel a whole-number share of your monthly visits, adding up to 100%. Multiply H by each share. To make the channel targets add back to H exactly, round every channel **down** first, then hand out the leftover visits one at a time to the channels with the biggest fractions left over. If two fractions tie, the channel higher in the list gets the visit.

```
Channel                                        Share    Monthly visits (H × share)    Owner
Google search, Business Profile, AI answers    ____%    __________                    __________
Reviews and referrals                          ____%    __________                    __________
Email                                          ____%    __________                    __________
Paid search and paid social                    ____%    __________                    __________
Content and social                             ____%    __________                    __________
Other: ______________                          ____%    __________                    __________
                                       TOTAL   100%     __________  (must equal H)
```

Starting shares if you have no better idea: 45% Google, 15% reviews and referrals, 15% email, 15% paid, 10% content and social. That's where the Builder and the Sheet start. Move them to match where your customers actually come from.

Marlowe & Voss (fictional): 120 Google (Dana), 50 referrals and reviews (Priya), 23 email (Priya), 50 paid search (partner), 20 social (Dana) = **263**.

## Step 6: Budget ceiling

Set the budget from what a customer is worth, not from a percentage of revenue.

**Choosing your allowable share of first-year value (I):**

- **20% to 30%** is a common working range for a business with healthy margins and a recurring relationship.
- **10% to 15%** fits a low-margin, one-time purchase.
- This is a business decision, not a marketing one, and it should be yours.

```
Allowable share of first-year value                    (I)     _______%
Allowable cost per customer = B × I                    (J)    $__________
Budget ceiling per year = J × C                        (K)    $__________
Budget ceiling per month = K ÷ 12                      (L)    $__________
```

Marlowe & Voss (fictional): $12,000 × 25% = **$3,000 per client**. × 25 clients = **$75,000 a year**, or **$6,250 a month**.

**Check the ceiling against your channel costs.** Estimate what each channel costs per month in cash and in hours. Put a rate on your own time: **$75 an hour is a reasonable floor for an owner.**

```
Monthly cash spend, all channels:                             $__________
Monthly hours, all channels: ______ hrs × $______/hr =        $__________
Planned monthly cost (cash + hours)                    (M)    $__________

M at or under 80% of L: fits.  Between 80% and 100% of L: tight.  Over L: needs a change.
```

If M is over L, you need a cheaper channel mix, a higher conversion rate, or a smaller goal. That's a much better conversation to have now than in month nine.

**Optional paid search sanity check.** For a lead-based business:

```
Paid visits per year = G × paid channel share                 __________
Paid leads per year = paid visits × F                         __________
Estimated paid cost = paid leads × cost per lead (table below) $__________
Compare with K × paid channel share                           $__________
```

For an online store, multiply paid visits by the $5.42 median cost per click instead.

**Check the ceiling against percentage benchmarks, as a smoke detector only.** If K works out to 3% of revenue, ask whether you're being too conservative to reach the goal. If it works out to 25%, ask whether a customer is really worth what Step 2 said.

## Placeholders

- **Close rate you don't know yet:** use **25%**, label it, and replace it after one quarter of counting. There's no honest cross-industry benchmark for close rate, so guess lower than you'd like and let the first quarter correct you.
- **Conversion rate you don't know yet:** use the landing-page median for your industry from the table below, label it, and replace it once GA4 has a quarter of key events. Those medians come from dedicated landing pages, which convert better than a typical service page. A service page converting at 2% to 3% is normal. If yours converts at 1%, the page is where your plan's cheapest gain lives.
- **At the quarterly re-run,** replace every placeholder you can with a measured number and run Steps 3 to 6 again.

## Benchmarks (current as of September 2026)

Use these to sanity-check your numbers, not to replace them.

**Median landing-page conversion rate** (Unbounce Conversion Benchmark Report, 41,000+ landing pages, Jul 2023 to Jul 2024):

| Industry | Median conversion rate |
|---|---:|
| All industries | 6.6% |
| Legal | 6.3% |
| Professional and commercial services | 6.1% |
| Financial services | 8.3% |
| Travel and hospitality | 4.8% |
| eCommerce | 4.2% |

**Google Ads** (WordStream by LocaliQ 2026 Google Ads Benchmarks, 13,474 US search campaigns, Apr 2025 to Mar 2026; medians from the vendor's own customer accounts, so treat them as a range, not a promise):

| Industry | Median conversion rate | Median cost per lead |
|---|---:|---:|
| All industries | 8.18% | $66.69 |
| Attorneys and legal services | 5.55% | $131.63 |
| Real estate | 3.70% | $102.51 |
| Home and home improvement | 8.05% | $90.92 |
| Dentists and dental services | 10.67% | $72.97 |
| Restaurants and food | 8.05% | $30.57 |

Median cost per click, all industries: $5.42.

Sources: [Unbounce](https://unbounce.com/conversion-benchmark-report/), [WordStream by LocaliQ](https://www.wordstream.com/blog/2026-google-ads-benchmarks). When a source publishes a new edition, update these tables, the date in the heading, and [`CHANGELOG.md`](CHANGELOG.md).

## By business type

The formulas never change. What counts as a customer, a lead, and a visit does.

| | Boutique inn | Real estate team | Restaurant | Online store |
|---|---|---|---|---|
| **Step 1: new-customer revenue** | Direct bookings by first-time guests, not repeat guests or stays that come from booking sites anyway | Commissions from buyers and sellers you haven't met yet, not sphere-of-influence repeats | Revenue from first-time guests; a first-visit offer or reservation-source field gives you a proxy | First-order revenue from new customers, which your store platform reports as new vs. returning |
| **Step 2: first-year value** | Average first stay plus the expected return stay: a $450 stay with a 30% chance of one return is about $585 | Average commission per side: $9,000 | First-visit spend times expected visits in year one: $60 × 4 visits = $240 | First order plus expected reorders: $70 with 1.5 reorders is about $175 |
| **Step 2: worked result** | $175,000 goal ÷ $585 = 300 new guests | $450,000 goal ÷ $9,000 = 50 closed sides | $120,000 goal ÷ $240 = 500 new guests | $350,000 goal ÷ $175 = 2,000 new customers |
| **Step 3: close rate** | Confirmed direct bookings ÷ booking inquiries (availability requests, calls, chats); track guests who book straight through your booking engine separately | Closed sides ÷ new-lead conversations that reached a consult or showing | First-time reservations honored ÷ reservation requests; walk-ins skip this step | Checkout completion: orders ÷ checkout starts |
| **Step 4: conversion rate** | Room and location page visits to a completed booking or availability request | Listing and neighborhood page visits to a home valuation, showing request, or buyer consult | Menu and location page visits to a reservation or online order; your Business Profile may produce more of these than your website | Product and collection page sessions to checkout starts |

For an online store, read "leads" as "checkout starts" everywhere in this worksheet. The Builder and the Sheet switch the labels for you when you choose Online orders.
