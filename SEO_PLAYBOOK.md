# Reach Screens — SEO Playbook (reach3.reachscreens.ca)

Last updated: 2026-05-12.

This is the working playbook for ranking reach3.reachscreens.ca at the top of every local-advertising search in the Lloydminster trading area. It captures what was shipped tonight, the full keyword universe we're targeting, the ongoing work that has to happen weekly/monthly to win, and the dashboards to watch.

---

## 1. What shipped tonight (commit `2f8d1c9`)

**Light theme + SEO build of reach3.reachscreens.ca.**

### On-page

- `<title>` rewritten: *"Lloydminster Digital Advertising | Indoor Screen Ads — Reach Screens"* — leads with the highest-intent local money keyword.
- `<meta name="description">` rewritten to a ~280 char snippet that names every primary use case (restaurants, salons, gyms, auto, waiting rooms), the value prop (from $1 per 1,000 views, free ad design), and the service area (Lloydminster, Vermilion, Bonnyville, Cold Lake, Lakeland).
- `<meta name="keywords">` legacy tag with 20+ matched terms.
- Geo tags: `geo.region=CA-AB`, `geo.placename=Lloydminster`, `geo.position`, `ICBM`.
- Open Graph: `site_name`, `locale=en_CA`, `og:image:alt`, all properties present.
- Twitter Card: title, description, image, summary_large_image.
- `robots` meta: `index, follow, max-image-preview:large, max-snippet:-1`.
- Two new content sections: **#industries** (9 cards × industry-specific keyword) and **#service-areas** (9 cards × city/region-specific keyword).
- FAQ expanded from 7 to 13 visible items mirroring schema.

### Structured data (JSON-LD)

7 schema nodes in a single `@graph`:

| Node | What it powers |
| --- | --- |
| `Organization` | Knowledge panel, brand cards |
| `WebSite` | Brand sitelinks |
| `BreadcrumbList` | Section navigation in SERP |
| `LocalBusiness + AdvertisingAgency` | Local pack eligibility, areaServed coverage (14 places), offer catalog (5 packages) |
| `Service` (digital signage advertising) | Service-type rich result, areaServed |
| `Service` (host a display) | Secondary service offering |
| `FAQPage` | 15 questions for AI Overviews + People Also Ask coverage |

### Crawl + indexing

- `sitemap.xml` rebuilt with `xmlns:image` entries for all six venue photos, each with descriptive title + caption naming Lloydminster, the venue type, and the brand.
- `robots.txt` updated to reference `https://reach3.reachscreens.ca/sitemap.xml` and explicitly disallow server-side noise paths.

---

## 2. The keyword universe (every search a client could use)

The seven clusters below cover the search demand we want to own. Each row lists the canonical keyword Reach Screens should rank for and which page section primarily addresses it.

### Cluster A — High-intent local money keywords

| Query | Section it answers |
| --- | --- |
| digital advertising Lloydminster | hero, title, meta |
| advertising Lloydminster | hero, title, meta |
| advertise my business Lloydminster | #idea, FAQ |
| where to advertise in Lloydminster | #locations map, #industries |
| best advertising Lloydminster | #compare table |
| local advertising Lloydminster | hero, #service-areas |
| digital signage Lloydminster | #how, JSON-LD Service |
| indoor advertising Lloydminster | #how, hero |
| screen advertising Lloydminster | hero, gallery |
| TV advertising Lloydminster | #compare row, JSON-LD |
| advertising agency Lloydminster | LocalBusiness schema |
| marketing agency Lloydminster | LocalBusiness schema |

### Cluster B — Cost / budget queries

| Query | Section |
| --- | --- |
| how much does digital advertising cost in Lloydminster | new FAQ entry, #compare |
| cheap advertising small business | hero, FAQ |
| cost per 1000 views digital signage | #compare table |
| small business advertising budget Lloydminster | FAQ |
| alternative to Facebook ads small business | FAQ ("vs social media") |
| alternative to Google ads small business | FAQ ("vs social media"), #compare |

### Cluster C — Education / category queries

| Query | Section |
| --- | --- |
| what is digital out of home advertising | FAQ ("DOOH") |
| what is DOOH | FAQ ("DOOH") |
| digital signage vs billboards | FAQ ("vs billboard"), #compare |
| are digital screens effective for advertising | #why stats, FAQ |
| does indoor digital signage work | #why stats |
| indoor DOOH Canada | meta, #how |

### Cluster D — Industry-specific (long tail)

| Industry | Page card |
| --- | --- |
| restaurant advertising Lloydminster | #industries → Restaurants |
| car dealership advertising Lloydminster | #industries → Auto Dealers |
| contractor advertising Lloydminster | #industries → Contractors |
| real estate advertising Lloydminster | #industries → Real Estate |
| dentist advertising Lloydminster | #industries → Healthcare |
| chiropractor advertising Lloydminster | #industries → Healthcare |
| gym advertising Lloydminster | #industries → Gyms |
| salon advertising Lloydminster | #industries → Retail & Salons |
| barbershop advertising Lloydminster | #industries → Retail & Salons |
| bar advertising Lloydminster | #industries → Restaurants/Bars |
| event advertising Lloydminster | #industries → Events |
| lawyer advertising Lloydminster | #industries → Professional Services |
| accountant advertising Lloydminster | #industries → Professional Services |

### Cluster E — Geographic (service-area)

| City / region | Section |
| --- | --- |
| Lloydminster advertising (AB) | hero, #service-areas |
| Lloydminster advertising (SK) | #service-areas |
| Vermilion advertising | #service-areas |
| Bonnyville advertising | #service-areas |
| Cold Lake advertising | #service-areas |
| St. Paul Alberta advertising | #service-areas |
| Maidstone advertising | #service-areas |
| Marwayne advertising | #service-areas |
| Kitscoty advertising | #service-areas |
| Paradise Hill advertising | #service-areas |
| Lakeland advertising | #service-areas |
| Alberta local advertising | #service-areas, LocalBusiness areaServed |
| Saskatchewan local advertising | #service-areas, LocalBusiness areaServed |

### Cluster F — Host / supply-side keywords

| Query | Section |
| --- | --- |
| host a digital screen | #host CTA banner, Service schema |
| digital signage host Lloydminster | #host |
| free digital signage installation | #host, FAQ |
| free advertising for my business | #host, FAQ |
| add screen to my business Lloydminster | #host |
| in-store screens Lloydminster | #host |

### Cluster G — Brand / navigational

| Query | What ranks |
| --- | --- |
| reach screens Lloydminster | home page |
| reach screens reviews | (TBD — see ongoing work) |
| reach screens pricing | #compare |
| reach3 reachscreens | home page |

---

## 3. Ranking strategy — the next 90 days

The on-page work is now state-of-the-art. The ranking gap from here is **off-page authority**, **freshness signals**, and **local-pack proximity**. Concrete plan:

### Week 1 (next 7 days) — verification + indexing

1. **Google Search Console** — verify `reach3.reachscreens.ca` (paste the meta tag into the GSC verification placeholder comment that's already in `<head>`). Submit `sitemap.xml`.
2. **Bing Webmaster Tools** — import from GSC, submit the same sitemap.
3. **Google Business Profile** — confirm the Reach Screens GBP is verified, that the website link points to `reach3.reachscreens.ca` (or whichever domain we settle on), and that categories include *Advertising agency, Marketing agency, Sign shop*.
4. **Schema validator pass** — run `https://validator.schema.org/` on the live URL; confirm zero errors across the 7 schema nodes.
5. **PageSpeed** — run a PSI test, confirm Core Web Vitals all green (the build is already optimised for this).
6. **Inspect URL → Request indexing** in GSC for the home page.

### Weeks 2–4 — local citations + content scaffolding

7. **NAP citations** (Name, Address, Phone — `Reach Screens, P.O. Box 11238, Lloydminster, AB T9V 3B5, +1-306-514-3752`) submitted to:
    - Yelp, YellowPages.ca, Canada411, Cylex, ShowMeLocal, Hotfrog, BBB, Lloydminster Chamber of Commerce directory.
    - Industry directories: BlueBook, Local Search Association, Capterra (advertising agency).
8. **Local press / earned links** — outreach to Meridian Source, Lloydminster Source, MyLloydminsterNow with a "local startup spotlight" angle. One inbound link from a `.ca` news domain is worth more than 30 generic directories.
9. **Industry case-study landing pages** — create separate URLs under `reach3.reachscreens.ca` for the top 3 industry clusters (e.g. `/restaurants/`, `/auto/`, `/contractors/`). Each one a long-form page targeting the cluster-specific keyword set with one customer quote and an FAQ tail. These become the long-tail-traffic engines.

### Months 2–3 — authority + freshness

10. **One blog post / case study every 2 weeks** under `/insights/` covering: "How [Lloyd venue] used Reach Screens for grand opening", "Cost per 1,000 views — Lloydminster ad-channel comparison 2026", "Hosting a Reach Screens display — what it earns the venue", "Best digital signage providers in Alberta — and how we compare". Each post embeds one or two of the JSON-LD `BlogPosting` entities and gets cross-linked from the home page.
11. **Customer testimonials with Review schema** — collect 5–10 quotes, mark them up as `Review` items with `aggregateRating` on the `LocalBusiness` node. This drives star ratings into the SERP.
12. **YouTube channel** — shoot 30-second loops of the actual screens running ads inside venues, embed on the home page, transcribe for indexable copy. Video is a separate SERP surface.
13. **Backlink hunt** — partnerships with the businesses already on the network (Lloyd Honda, Fountain Tire, In2Golf, etc.) for a "Proud partner" badge linking back. These are real, organic, local-business links — the gold standard for local SEO.

---

## 4. Dashboards to watch (weekly cadence)

- **Google Search Console — Performance**: queries gaining impressions, position 4–20 "striking-distance" keywords to push to top-3. The `reach-seo` tooling at `/Users/nicholasconnelly/Applications/reach-seo/` automates the pull (run `reach-seo-loop` skill weekly).
- **Google Search Console — Coverage**: every commit, check that no new pages got `Crawled — currently not indexed`.
- **GBP Insights**: profile views, direction requests, calls.
- **PageSpeed Insights**: CWV must stay green; a single regression below 90 mobile burns weeks of authority.
- **Rank tracker**: free option is `SerpRobot`; paid is `AccuRanker` — track the 60 keywords listed in the seven clusters above weekly, by city.

---

## 5. Ongoing operating principles

- **Every new offering = a new keyword-rich section + a JSON-LD `Service` node.** No marketing change ships without an SEO check.
- **Schema and visible content stay in sync.** Google penalises FAQPage entries whose answers aren't visible to users — every schema FAQ must have a `.faq-item` DOM counterpart.
- **One canonical per page, one h1 per page.** Always.
- **CWV regressions block merge.** The `reach3` build is currently LCP < 2s, CLS < 0.05, TBT < 200ms — preserve this.
- **The dark CTA banner is intentional.** Don't "fix" its dark gradient — it's the deliberate contrast accent against the otherwise-light page.

---

## 6. Future moves to evaluate (not on this sprint)

- Migrate `reach3.reachscreens.ca` content to the apex `reachscreens.ca` once stakeholder review is done — subdomain authority doesn't fully inherit from the root domain.
- Add an `hreflang` declaration if a French-Canadian variant gets built.
- Investigate Google Ads (paid) for the top three money keywords as a temporary measure until organic ranks catch up.
