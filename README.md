# 📊 Hi, I'm Norah! 👋

I am an **Information Systems Student** passionate about data analysis, database management, and solving real-world problems through data.

---

## 🛠️ Key Skills & Certifications

* **Database & Querying:** SQL (MySQL Workbench), Data Cleaning, Exploratory Data Analysis (EDA)
* **Data Analytics & Tools:** Python (Pandas, NumPy), Microsoft Excel (PivotTables, Clean Staging, Dashboard Design)
* **Visualization & Web Apps:** Matplotlib, Streamlit
* **Certifications:** 
  * 🎓 [Microsoft Certified: Azure AI Fundamentals (AI-900)](https://learn.microsoft.com/api/credentials/share/en-us/NourahAziz-9804/7670838E163E5E9A?sharingId=7EC7030839378090)
  * 📜 **Microsoft Azure Fundamentals (AZ-900 / Describe Azure Management & Governance)** – Spectrum Networks / ICAIRE Elevate[cite: 5]
  * 📜 **Artificial Intelligence Concepts and Advanced Applications** – SDAIA (Saudi Data & AI Authority)[cite: 3]
  * 📜 **Fundamentals of Artificial Intelligence** – SDAIA (Saudi Data & AI Authority)[cite: 4]

---

## 📁 Featured Projects

### 1. 🚴 Bike Sales Interactive Dashboard (Microsoft Excel)
* **Objective:** Analyze customer demographics to identify key drivers behind bicycle purchasing decisions.
* **Data Cleaning & Preparation:** 
  * Replaced abbreviated codes (e.g., `M`/`S` and `M`/`F`) with full descriptive labels (`Married`/`Single` and `Male`/`Female`).
  * Engineered age categories (`Age Brackets`) to segment buyers across age demographics.
* **Analysis & Visualization:** Built dynamic PivotTables and an interactive **Bike Sales Dashboard** tracking average income, commute distance, and age groups relative to purchase activity.

---

### 2. 🌍 World Layoffs Data Analysis (SQL)
In this project, I used **MySQL Workbench** to perform end-to-end data processing on a global tech layoffs dataset[cite: 1, 2]:

#### 🧹 Data Cleaning ([`data cleaning project.sql`](./data%20cleaning%20project.sql))
* **Duplicates:** Removed duplicate entries using CTEs with `ROW_NUMBER() OVER(PARTITION BY...)`[cite: 1].
* **Standardization:** Cleaned whitespace using `TRIM()`, unified industry values (e.g., standardizing variants to `'Crypto'`), and formatted dates using `STR_TO_DATE()`[cite: 1].
* **Null Handling:** Populated missing industry records by joining matching company entries and removed uninformative rows[cite: 1].

#### 🔍 Exploratory Data Analysis ([`Exploratory data analysis.sql`](./Exploratory%20data%20analysis.sql))
* **Aggregations:** Summarized total layoffs by Company, Industry, Stage, and Country[cite: 2].
* **Rolling Totals:** Calculated monthly cumulative totals using Window Functions (`SUM() OVER()`)[cite: 2].
* **Rankings:** Applied `DENSE_RANK()` inside CTEs to identify the top 5 companies per year by total layoffs[cite: 2].

---

📫 **Connect with Me**
* **LinkedIn:** [Your LinkedIn Link Here]
* **Email:** [Your Professional Email Here]
<!--
**NorahAbdulaziz33/NorahAbdulaziz33** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
