+++
date = '2022-04-12T16:24:23-04:00'
title = 'Notes on Inferential Stats'
+++


# Notes on Inferential Stats

## Introduction

Statistics is far more than just numbers and calculations. While it does involve mathematical computation, statistics encompasses a comprehensive range of techniques and procedures used for analyzing, interpreting, displaying, and making informed decisions with data.

In our daily lives, we're constantly bombarded with claims, facts, and statistical information. Without a solid understanding of statistical principles, we often struggle to distinguish between sound reasoning and faulty logic, making us vulnerable to manipulation and poor decision-making.

There's an old saying: "You can't make a silk purse out of a sow's ear." This wisdom applies perfectly to statistical analysis. Despite computers' remarkable ability to process numbers with incredible speed and accuracy, the quality of output depends entirely on the quality of input. If you feed nonsensical data into a system, you'll get nonsensical results—no matter how sophisticated the analysis appears.

This principle is especially critical in our modern computing environment, where many systems operate as "black boxes." Statistical methods are essentially tools for processing information, primarily numerical data. Different statistical procedures make specific assumptions about the data they receive, and when these assumptions are violated, the results become meaningless—though they might still look impressively sophisticated.

## Descriptive vs. Inferential Statistics

### Descriptive Statistics
Descriptive statistics use numbers to summarize and describe data. While measures like averages, variance, and other descriptive statistics might not provide information for generalizing beyond the immediate dataset, they offer valuable insights into the data at hand.

### Inferential Statistics
In statistics, we often rely on samples to draw inferences about larger populations. The larger group from which a sample is drawn is called the **population**. Inferential statistics are based on the critical assumption that sampling is random.

For example, if we want to draw conclusions about how Americans feel about voting procedure fairness, our sample should ideally represent different segments of society in appropriate proportions. Otherwise, we risk creating a biased sample that reflects only certain population segments.

## Sampling Methods

The statistical distinction between population and sample is fundamentally the difference between "all" and "some." When we measure all instances of a particular variable, we get a population distribution. When we measure only a limited subset, we get a sample distribution.

Since populations are often too large or inaccessible to examine completely, we use systematic sampling techniques:

### Simple Random Sampling
The most straightforward approach, requiring every population member to have an equal chance of selection.

### Random Assignment
When developing truly random procedures is difficult, careful randomization is required. For instance, in testing a new antidepressant's effectiveness, researchers identify a population with some degree of depression, take a random sample, then randomly divide it into treatment and control groups.

### Stratified Sampling
When populations have distinct groups or strata, stratified sampling works best. This involves identifying sample members from each group, then randomly sampling from each subgroup so that subgroup sizes in the sample are proportional to their sizes in the population.

## Types of Variables

### Dependent and Independent Variables
Variables are characteristics of events, objects, or persons that can take different values. In experimental research:
- **Independent variables** are manipulated by the experimenter
- **Dependent variables** are measured to determine the effects of manipulation

Example: In comparing four antidepressant drugs' effectiveness, the drug types are independent variables, while depression relief is the dependent variable.

### Quantitative vs. Qualitative Variables
- **Quantitative variables** can be measured numerically and imply numerical ordering
- **Qualitative (categorical) variables** have qualitative attributes like color or gender

### Discrete vs. Continuous Variables
- **Discrete variables** exist in whole units (e.g., number of people—can't have 4.5 people)
- **Continuous variables** can take any value within a range (e.g., revenue of $45.55)

## Levels of Measurement

All measurement fundamentally involves counting, ordering, or sorting:

### Nominal Scale
Used for categorical responses with names (gender, color, etc.)

### Ordinal Scale
Allows ordering and comparison of dependent variables

### Interval Scale
Numerical scales where every interval has the same interpretation (e.g., Fahrenheit scale)

### Ratio Scale
The most informative scale, with a zero position indicating absence of the measured quantity

## Measures of Central Tendency

### The Mean
The arithmetic average of all values, calculated by summing all values and dividing by the number of values. The mean is crucial in analytical statistics because it can be subjected to further mathematical operations.

### The Median
The midpoint of all individual measures when arranged in order. For odd numbers of values, it's the middle value; for even numbers, it's the average of the two middle values.

### The Mode
The most frequently occurring value in the distribution.

### Additional Measures
- **Trimean**: Weighted average of 25th, 50th, and 75th percentiles
- **Geometric Mean**: Calculated by multiplying all numbers and taking the nth root
- **Trimmed Mean**: Computed after removing specified percentages from both ends

## Measures of Variability

### Range
The simplest measure: highest value minus lowest value.

### Interquartile Range (IQR)
The range of the middle 50% of scores: 75th percentile minus 25th percentile.

### Variance and Standard Deviation
These mathematically useful measures are related: variance = (standard deviation)². The standard deviation is more intuitive as it's expressed in the same units as the original data.

For normal distributions, approximately 68% of values fall within one standard deviation of the mean, and 95% fall within two standard deviations.

## Distribution Shapes

### Skewness
- **Positively skewed**: Tail extends to the right; mean typically larger than median
- **Negatively skewed**: Tail extends to the left; mean typically smaller than median

### Kurtosis
Describes the distribution's curvature:
- **Platykurtic**: Relatively flat
- **Leptokurtic**: Tall and slender
- **Mesokurtic**: Medium curvature (normal)

### Modality
Refers to the number of peaks:
- **Unimodal**: One peak
- **Bimodal**: Two peaks
- **Multimodal**: Multiple peaks

## Working with Bivariate Data

### Correlation
Pearson's correlation coefficient (r) measures linear relationship strength between two variables, ranging from -1 to +1:
- r = -1: Perfect negative relationship
- r = 0: No linear relationship  
- r = +1: Perfect positive relationship

The formula is: r = Σxy / √(Σx²Σy²)

## Probability Fundamentals

### Basic Probability
**Frequentist definition**: Number of favorable outcomes divided by total number of equally likely outcomes.

### Key Rules
- **Independent events**: P(A and B) = P(A) × P(B)
- **Either/or probability**: P(A or B) = P(A) + P(B) - P(A and B)
- **Conditional probability**: P(A and B) = P(A) × P(B|A)

### Counting Methods
- **Permutations**: nPr = n!/(n-r)! (order matters)
- **Combinations**: nCr = n!/[(n-r)!r!] (order doesn't matter)

## Important Probability Distributions

### Normal Distribution
- Symmetric around the mean
- Mean, median, and mode are equal
- Defined by mean and standard deviation
- 68% of data within 1 SD, 95% within 2 SD
- Standard normal: mean = 0, SD = 1

### Binomial Distribution
For situations with two possible outcomes:
- Mean: μ = Nπ
- Variance: σ² = Nπ(1-π)
- Used for fixed number of independent trials

### Poisson Distribution
For counting events in fixed intervals:
- Mean and variance both equal λ
- Used when events are random and independent

### Other Distributions
- **Multinomial**: More than two possible outcomes
- **Hypergeometric**: Sampling without replacement

## Bayes' Theorem

Essential for updating probabilities with new information:

P(D|T) = [P(T|D) × P(D)] / [P(T|D) × P(D) + P(T|D') × P(D')]

This is particularly important in medical testing, where we need to consider base rates when interpreting test results.

## Key Takeaways

Understanding statistics requires grasping both the mathematical foundations and the conceptual framework. The most important principles are:

1. **Garbage in, garbage out**: Quality of analysis depends on data quality
2. **Sampling matters**: Random, representative sampling is crucial for valid inferences
3. **Choose appropriate measures**: Different situations require different statistical tools
4. **Consider assumptions**: Every statistical method has underlying assumptions
5. **Context is crucial**: Statistical significance doesn't always mean practical importance

Statistics is a powerful tool for understanding our world, but it requires careful application and interpretation. By mastering these fundamentals, you'll be better equipped to analyze data, make informed decisions, and critically evaluate statistical claims you encounter daily.