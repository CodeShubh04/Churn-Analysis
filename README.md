# 📊 Customer Churn Analysis & Prediction

This project focuses on analyzing and predicting customer churn behavior using machine learning techniques, followed by an interactive dashboard for business insights.

## 🧩 Project Overview

Customer churn is a critical metric for subscription-based businesses. This project aims to:

* Identify key drivers behind customer churn.
* Predict the likelihood of churn using classification models.
* Provide visual insights through a comprehensive dashboard.

---

## 📁 Project Structure

```
📦 Churn-Analysis-Project
├── 📊 Churn Analysis.ipynb          # Main analysis and machine learning pipeline
├── 🧹 Analysis.ipynb                # Data cleaning and preprocessing
├── 🧠 PCA vs LDA.ipynb              # Dimensionality reduction comparison (PCA vs LDA)
├── 📈 Churn Analysis.pbix     # Final dashboard preview
├── README.md                       # Project documentation
```

---

## 🚀 Workflow

### 1. Data Cleaning and Preparation

Performed in `Analysis.ipynb`:

* Handled missing values and outliers.
* Encoded categorical variables.
* Standardized numerical features.

### 2. Exploratory Data Analysis (EDA)

Performed in `Churn Analysis.ipynb`:

* Uncovered churn patterns across age, gender, tenure, internet type, contract type, and services used.
* Key Insights:

  * Highest churn rate among month-to-month contracts (46.5%).
  * Fiber optic users show a churn rate of 41.1%.
  * States like Jammu & Kashmir have the highest churn (57.2%).

### 3. Dimensionality Reduction

Explored in `PCA vs LDA.ipynb`:

* Compared PCA and LDA for reducing feature space.
* Used for better model interpretability and performance optimization.

### 4. Machine Learning Models

Built in `Churn Analysis.ipynb`:

* Models Used: Logistic Regression, Decision Tree, Random Forest, etc.
* Evaluated using accuracy, precision, recall, and F1-score.

### 5. Interactive Dashboard

Created using Power BI (preview shown in `Churn Analysis.pbix`):

* Segmented by demographics, payment methods, contract types, and services.
* Visualizes key churn rates and total customers.

---

## 📊 Dashboard Highlights

* **Churn Rate**: 27.0%
* **Total Customers**: 6,418
* **Top Churn Factors**:

  * Competitor (most common churn reason)
  * Fiber Optic Internet
  * Month-to-Month Contract
  * Mailed Check payment method

---

## 💡 Key Learnings

* Data cleaning has a strong influence on prediction performance.
* LDA can outperform PCA when class separability is important.
* Power BI enables accessible storytelling with complex data.

---

## 🛠️ Tech Stack

* **Languages**: Python
* **Libraries**: Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn
* **Visualization**: Power BI
* **Modeling**: Logistic Regression
* **Dimensionality Reduction**: PCA, LDA

---

## 📎 How to Run

1. Clone the repo:
   `git clone https://github.com/your-username/churn-analysis.git`

2. Run notebooks in Jupyter or VS Code.

3. Open the dashboard using Power BI Desktop.

---
