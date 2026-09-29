# Completed Example: Marlowe & Voss Family Law

Marlowe & Voss Family Law is a fictional firm. The numbers are realistic for a two-attorney family law practice, and every one of them traces back to a step in [`CUSTOMER-MATH-WORKSHEET.md`](CUSTOMER-MATH-WORKSHEET.md).

The firm is run by Dana, the founding attorney, with an office manager named Priya. Its revenue target for the next 12 months is $900,000, and it expects about $600,000 of that from matters already open and from past clients who come back or send family. That leaves $300,000 the marketing plan has to earn.

## The one-page plan

| TARGET | |
|---|---|
| New-client revenue, next 12 months | $300,000 |
| First-year value of a new matter | $12,000 |
| New clients needed | 25 |

| MATH | |
|---|---|
| Consult-to-signed rate | 40%, so 63 booked consultations |
| Booking rate (practice-area visit to booked consultation) | 2%, so 3,150 qualified visits, 263 per month |

| CHANNELS AND OWNERS | Monthly visits | Owner | How the firm measures it |
|---|---:|---|---|
| Google search, Business Profile, AI answers | 120 | Dana | Search Console clicks to practice-area pages, Business Profile website clicks |
| Referrals and reviews | 50 | Priya | Referral consults tagged by source at intake, new reviews per month |
| Email (past-client newsletter and consult follow-up sequence) | 23 | Priya | GA4 sessions from email to practice-area and consultation pages |
| Paid search | 50 | Partner | Google Ads clicks to practice-area landing pages, cost per booked consultation |
| Social | 20 | Dana | GA4 sessions from social to practice-area pages |
| **Total** | **263** | | |

| BUDGET | |
|---|---|
| Allowable cost per client | 25% of $12,000 = $3,000 |
| Budget ceiling | $75,000 for the year, $6,250 per month, dollars plus hours at a real rate |

| SCOREBOARD (monthly) | Target |
|---|---|
| Visits to practice-area and consultation pages | 263 |
| Leads (booked consultations) | 6 (63 ÷ 12, rounded up) |
| New clients | 2 to 3 |
| Cost per client | under $3,000 |

| REVIEW | |
|---|---|
| Monthly | First Tuesday of the month, 30 minutes, Dana and Priya |
| Quarterly | Re-run the math with measured rates |

## Where a real firm pulls each number from

- **New-client revenue ($300,000):** the firm's 12-month revenue target minus the revenue expected from open matters and returning clients.
- **First-year value ($12,000):** Priya pulls the last two years of new matters from the billing system and averages what each one paid in its first 12 months, contested and uncontested together.
- **Consult-to-signed rate (40%):** the intake spreadsheet Priya keeps, tracked by source. That rate is realistic for consultations that came from a practice-area page or a referral, and optimistic for consultations from a broad "free consultation" ad.
- **Booking rate (2%):** GA4 key events divided by sessions on the practice-area and consultation pages. It sits well under the 6.3% legal landing-page median, and it should: a practice-area page isn't a dedicated landing page, and a divorce isn't a decision people make on the first visit.
- **Channel targets:** the "How the firm measures it" column above. Each number comes from a report the firm already has.
- **Budget ceiling ($75,000):** 25% of first-year value times 25 clients. It covers the paid search partner, the tools, and Dana's and Priya's hours at a real rate, which is the line that's easiest to leave off.

## About the channel split

The split isn't even, and it shouldn't be. It follows where qualified visits come from for a firm like this: people searching for a divorce attorney in their county, and people sent by past clients and other attorneys.

The split is a judgment call. The Marketing Plan Builder and the Google Sheet start every plan at 45% Google, 15% reviews and referrals, 15% email, 15% paid, and 10% content and social, which would give this firm 118, 40, 40, 39, and 26 visits a month. Dana moved visits toward referrals and paid search because that's where her consultations come from. Treat the defaults as a starting point and move them to match where your customers actually come from.

## What the plan tells Dana

Look at the owner column. Dana's name is on the biggest line and the smallest one, and every hour she spends on Google or social is an hour she doesn't bill at $350. The plan's real constraint is her time, which is exactly what the budget step is for: it tells her whether the cheapest fix is a tool, a part-time hire, or handing a channel to a partner.

Every line of this plan will be wrong in some way by the end of the first quarter. That's fine, and it's the reason to write it down. It gives Dana something specific to be wrong about, which is how she learns what actually produces clients for her firm.

## The "current as of" box, filled in

```
CURRENT AS OF: October 2026

Benchmarks used (value, source, data window):  Legal landing-page median 6.3% (Unbounce, Jul 2023 to Jul 2024);
                                                legal Google Ads cost per lead $131.63 (WordStream by LocaliQ, Apr 2025 to Mar 2026)
Tools we measure with:                          GA4, Google Search Console, Google Business Profile, intake spreadsheet, billing system
Channels in the plan:                           Google search and Business Profile, referrals and reviews, email, paid search, social
```

Your turn: copy the blank plan from [`ONE-PAGE-MARKETING-PLAN.md`](ONE-PAGE-MARKETING-PLAN.md).
