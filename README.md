# MBIRI Research Dissemination Hub

[![Website](https://img.shields.io/badge/website-test.mbiri.net-blue)](https://test.mbiri.net)
[![Related Project](https://img.shields.io/badge/related-science--simplifier--tool-green)](https://github.com/guthdx/science-simplifier-tool)

A research dissemination website for the Missouri Breaks Indian Health Improvement Research Initiative (MBIRI), serving as a hub for sharing health research findings and community resources.

## Overview

This static website hosts research summaries, original academic papers, and interactive health tools, making scientific research accessible to researchers, healthcare providers, and community members interested in cardiovascular and public health outcomes.

## Features

### Research Summaries
- **COVID-19 Studies (C4R)**: 9 comprehensive summaries covering study design, antibody response, cardiovascular health impacts, lung function, resilience, spatial data, and epidemiologic features
- **Strong Heart Family Study (SHFS)**: Research on Life's Essential 8, cardiovascular disease, pregnancy cardiovascular risk
- **Environmental Health**: Uranium groundwater contamination, mercury autoimmunity studies
- **Annual Meeting Papers**: 12 research presentation summaries

### Interactive Tools
- **Heart Health Calculator** (`essential_8_calc.html`): Interactive calculator based on the American Heart Association's Life's Essential 8 metrics
- **Community Health Dashboard** (`community-health-dashboard.html`): Visual dashboard displaying local health metrics using D3.js and Chart.js

### Original Research Papers
Located in `original_papers/` directory:
- 25+ peer-reviewed research papers (PDF format)
- `word_backups/`: Source DOCX files before PDF conversion
- `sst_uploads/`: Recent papers uploaded via Science Simplifier Tool

## Site Structure

```
/
├── index_mbiri.html              # Main landing page
├── annual_meeting_papers.html    # Annual meeting index
├── C4R_*.html                    # COVID-19 research summaries
├── SHFS_*.html                   # Strong Heart Family Study summaries
├── essential_8_calc.html         # Interactive heart health tool
├── community-health-dashboard.html
├── original_papers/              # PDF research papers
│   ├── *.pdf                     # 25+ research papers
│   ├── word_backups/             # Source DOCX files
│   └── sst_uploads/              # Recent uploads
├── annual_meeting/               # Annual meeting summaries
└── static assets (logos, images)
```

## Technology Stack

- **Frontend**: Pure HTML5, CSS3, JavaScript (no framework)
- **Styling**: Embedded CSS with CSS Grid and Flexbox for responsive layouts
- **JavaScript Libraries** (via CDN):
  - D3.js v7.8.5 (data visualization)
  - Chart.js v3.9.1 (charts)
- **Responsive Design**: Mobile-first with 768px breakpoint

## Content Workflow

Research papers are simplified using the [Science Simplifier Tool](https://github.com/guthdx/science-simplifier-tool):

1. Upload PDF to [sst.mbiri.net](https://sst.mbiri.net)
2. AI generates community-friendly summary with:
   - 6th grade reading level summary
   - Blog post drafts
   - Social media content
   - YouTube video scripts
   - Main findings and actionable guidance
3. HTML output deployed to this site
4. Original paper stored in `original_papers/sst_uploads/`

## How to Add New Research Summaries

1. Generate simplified summary using [Science Simplifier Tool](https://sst.mbiri.net)
2. Download HTML output
3. Deploy to site:
   ```bash
   scp simplified_*.html user@server:/var/www/test.mbiri.net/html/
   ```
4. Original PDF is automatically deployed to `original_papers/sst_uploads/`
5. Update index page if needed
6. Commit to git:
   ```bash
   git add .
   git commit -m "Add new research summary: [title]"
   git push
   ```

## Deployment

The site is hosted as a static website. Deploy updates:

```bash
# Navigate to site directory
cd /var/www/test.mbiri.net/html

# Pull latest changes
git pull

# Or deploy new files directly
scp newfile.html user@server:/var/www/test.mbiri.net/html/
```

## Institutional Partners

- **Missouri Breaks Indian Health Improvement Research Initiative (MBIRI)**
- **National Heart, Lung, and Blood Institute (NHLBI)**
- **Strong Heart Study**

## Related Projects

- [Science Simplifier Tool](https://github.com/guthdx/science-simplifier-tool) - AI-powered tool for generating the simplified summaries hosted on this site

## License

Research content and papers are subject to their respective licenses. Website code is for MBIRI research dissemination purposes.

## Contact

For questions about the research or website, contact the Missouri Breaks research team.

---

*Research summaries generated with AI assistance to make scientific findings accessible to broader audiences.*
