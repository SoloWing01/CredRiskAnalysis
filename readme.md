# Credit Risk Analysis & FICO Rating System

A machine learning project that predicts **loan default probability** and generates **FICO score rating buckets** using dynamic optimization techniques.

This project consists of two independent Jupyter notebooks:

1. **CreditRiskAnalysis.ipynb** – Predicts whether a customer is likely to default on a loan using Logistic Regression.
2. **FicoRating.ipynb** – Automatically creates credit rating buckets from FICO scores using optimization algorithms.

---

# Project Structure

```
├── CreditRiskAnalysis.ipynb
├── FicoRating.ipynb
├── Task_3_and_4_Loan_Data.csv
└── README.md
```

---

# Project 1: Credit Risk Analysis

## Objective

Predict whether a customer will default on a loan based on financial information.

---

## Dataset Features

The model uses numerical customer information including:

- Credit Lines Outstanding
- Loan Amount Outstanding
- Total Debt Outstanding
- Annual Income
- Years Employed
- FICO Score

Target Variable

- **default**
    - 0 → No Default
    - 1 → Default

---

## Workflow

### 1. Data Loading

- Load dataset using Pandas
- Display summary statistics
- Check missing values
- Select numerical features

---

### 2. Data Splitting

Dataset is divided into:

- 80% Training
- 20% Testing

using stratified sampling.

---

### 3. Model Training

A Logistic Regression model is trained to predict loan default.

---

### 4. Model Interpretation

The notebook prints

- Model coefficients
- Feature importance
- Probability of default

---

### 5. Model Evaluation

Performance metrics include

- Accuracy
- Confusion Matrix
- Classification Report
- ROC-AUC Score

---

### 6. Feature Scaling

The notebook also trains another Logistic Regression model using

- StandardScaler

to compare performance.

---

### 7. Predicting New Customers

A reusable prediction function allows inference on new customer data.

Example input:

```python
{
    "credit_lines_outstanding":2,
    "loan_amt_outstanding":5000,
    "total_debt_outstanding":9000,
    "income":65000,
    "years_employed":4,
    "fico_score":620
}
```

Output:

- Default Probability
- Predicted Class (0 or 1)

---

# Project 2: FICO Rating System

## Objective

Automatically generate credit rating buckets from FICO scores.

Instead of manually defining score ranges, the notebook finds optimal bucket boundaries using statistical optimization.

---

## Features

- Aggregates customers by FICO score
- Computes default rates
- Generates optimal bucket boundaries
- Assigns ratings to new applicants

Lower rating represents **better credit quality**.

Example

| Rating | Credit Quality |
|---------|----------------|
| 1 | Excellent |
| 2 | Very Good |
| 3 | Good |
| 4 | Fair |
| 5 | Poor |

---

## Methods Used

### Mean Squared Error (MSE)

Creates bucket boundaries that minimize within-bucket variance.

---

### Log-Likelihood Optimization

Creates boundaries that maximize the likelihood of observing the default distribution.

This generally produces more meaningful risk categories.

---

## Outputs

The notebook produces

- FICO distribution plots
- Default rate plots
- Optimized bucket boundaries
- Bucket statistics
- Rating map for new customers

---

## Example

Input:

```
FICO Score = 671
```

Output

```
Rating = 3
```

---

# Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Scikit-learn

---

# Installation

Clone the repository

```bash
git clone <repository-url>
```

Install dependencies

```bash
pip install pandas numpy matplotlib scikit-learn
```

---

# Running the Project

Place

```
Task_3_and_4_Loan_Data.csv
```

in the project directory.

Then run

```
CreditRiskAnalysis.ipynb
```

or

```
FicoRating.ipynb
```

using Jupyter Notebook or VS Code.

---

# Future Improvements

- XGBoost and LightGBM models
- Random Forest comparison
- Hyperparameter tuning
- Cross-validation
- Model deployment using Flask/FastAPI
- Interactive dashboard using Streamlit
- Automatic rating generation API

---
