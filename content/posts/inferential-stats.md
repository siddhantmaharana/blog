+++
date = '2022-04-12T16:24:23-04:00'
title = 'Notes on Inferential Stats'
+++

# Notes on Inferential Stats

I keep coming back to these statistical concepts in my work, so I figured I'd write down the key ideas that actually matter in practice. This isn't meant to be comprehensive - just the stuff I find myself explaining over and over.

## Why Statistics Matters (Beyond the Math)

People think statistics is just crunching numbers, but it's really about making good decisions with incomplete information. Every day we're bombarded with claims backed by "data" - political polls, product reviews, market research. Without understanding the fundamentals, it's hard to tell good analysis from garbage.

There's an old saying: "You can't make a silk purse out of a sow's ear." This applies perfectly to data analysis. Computers can process numbers incredibly fast, but if you feed them junk data, you get junk results - even if those results look sophisticated.

This is especially important now when so many tools work like black boxes. You upload data, click a button, and get impressive-looking charts. But every statistical method makes assumptions about your data, and when those assumptions are wrong, the results are meaningless.

## Descriptive vs Inferential Stats

**Descriptive statistics** summarize what you have. Mean, median, standard deviation - these tell you about your specific dataset, nothing more.

**Inferential statistics** let you make educated guesses about things you haven't directly measured. This is where it gets interesting (and where you can get into trouble).

The key insight: We usually can't measure everything we care about, so we measure a sample and try to infer something about the larger population. This only works if your sample is representative - which brings us to sampling.

## Sampling: The Foundation of Everything

The difference between population and sample is the difference between "all" and "some." When we measure every instance, we get the population distribution. When we measure a subset, we get a sample distribution.

Since measuring everything is usually impossible or impractical, we need good sampling methods:

### Simple Random Sampling
Every member of the population has an equal chance of being selected. Sounds simple, but it's often harder to implement than you'd think.

### Stratified Sampling  
When your population has distinct groups, you sample from each group proportionally. This often gives more representative results than simple random sampling.

### The Randomization Reality Check
True randomization is hard. If you're testing a new medication, you can't just give it to whoever volunteers - you need to carefully randomize who gets the treatment and who gets the placebo, accounting for age, gender, health status, etc.

## Types of Variables (And Why It Matters)

Understanding your variables determines which statistical tools you can use:

### Independent vs Dependent Variables
- **Independent**: What you manipulate or control
- **Dependent**: What you measure to see the effect

In a drug trial, the medication type is independent, the health outcome is dependent.

### Quantitative vs Qualitative  
- **Quantitative**: Numbers with meaningful ordering (age, income, test scores)
- **Qualitative**: Categories (gender, color, yes/no responses)

### Discrete vs Continuous
- **Discrete**: Whole units only (number of customers, defects per batch)
- **Continuous**: Any value in a range (revenue of $45.67, temperature of 72.3°F)

This matters because different variable types require different statistical approaches.

## Levels of Measurement

This determines how sophisticated your analysis can be:

### Nominal
Just categories with names. You can count them but not order them meaningfully. (Gender, product categories, colors)

### Ordinal  
You can order them, but the differences between levels aren't necessarily equal. (Survey ratings: poor, fair, good, excellent)

### Interval
Equal intervals between values, but no true zero point. (Temperature in Fahrenheit - 40°F isn't "twice as hot" as 20°F)

### Ratio
Equal intervals AND a meaningful zero point. (Revenue, age, height - $100 is twice as much as $50)

Higher levels give you more analytical options. You can calculate means with interval and ratio data, but only modes with nominal data.

## Measures of Central Tendency

### Mean (Average)
Add everything up, divide by the count. The workhorse of statistics because you can do math with it. But it's sensitive to outliers - one billionaire in your survey can skew the average income dramatically.

### Median  
The middle value when everything's in order. More robust than the mean because outliers don't affect it as much.

### Mode
The most common value. The only measure of central tendency you can use with nominal data.

### When to Use Which
- Normal distribution: Mean, median, and mode are all about the same
- Skewed distribution: Median often tells a better story than mean
- Categorical data: Mode is your only option

## Measures of Variability

Knowing the center isn't enough - you need to know how spread out your data is.

### Range
Highest minus lowest value. Simple but not very informative because it's dominated by extreme values.

### Interquartile Range (IQR)
The range of the middle 50% of your data. More robust than the full range.

### Standard Deviation
This is the big one. It measures the average distance from the mean. For normal distributions:
- About 68% of data falls within 1 standard deviation of the mean
- About 95% falls within 2 standard deviations

Standard deviation has the same units as your original data, which makes it intuitive to interpret.

### Variance
Just the standard deviation squared. Less intuitive but mathematically useful in many formulas.

## Distribution Shapes Matter

### Skewness
- **Positive skew**: Long tail to the right, mean > median (like income distribution)
- **Negative skew**: Long tail to the left, mean < median

### Kurtosis  
How peaked or flat your distribution is:
- **Leptokurtic**: Tall and skinny
- **Platykurtic**: Short and wide  
- **Mesokurtic**: Normal amount of peakedness

### Why This Matters
Many statistical tests assume normal distributions. When your data is heavily skewed, those tests can give misleading results.

## Working with Two Variables

### Correlation
Pearson's correlation coefficient (r) measures linear relationships between two variables:
- r = 1: Perfect positive relationship
- r = 0: No linear relationship
- r = -1: Perfect negative relationship

The formula: r = Σxy / √(Σx²Σy²)

### The Correlation Reality Check
Correlation doesn't imply causation. Period. Just because two things move together doesn't mean one causes the other. There might be:
- A third variable affecting both
- Reverse causation (B causes A, not A causes B)  
- Pure coincidence

## Probability: The Language of Uncertainty

### Basic Probability
**Frequentist approach**: Probability = (favorable outcomes) / (total possible outcomes)

This works for things like dice and cards where you know all possible outcomes.

### Key Rules
- **Independent events**: P(A and B) = P(A) × P(B)
- **Either/or**: P(A or B) = P(A) + P(B) - P(A and B)
- **Conditional**: P(A|B) = P(A and B) / P(B)

### Counting Methods
When you need to figure out how many ways something can happen:
- **Permutations**: Order matters. nPr = n!/(n-r)!
- **Combinations**: Order doesn't matter. nCr = n!/[(n-r)!r!]

## Important Probability Distributions

### Normal Distribution
The famous bell curve. Symmetric around the mean, with most data near the center and fewer observations at the extremes. Defined completely by its mean and standard deviation.

Why it's everywhere: The Central Limit Theorem says that averages of samples tend to be normally distributed, even if the underlying data isn't.

### Binomial Distribution  
For yes/no, success/failure type situations with a fixed number of trials. Like counting how many heads you get in 10 coin flips.
- Mean: μ = Nπ (N trials, π probability of success)
- Variance: σ² = Nπ(1-π)

### Poisson Distribution
For counting events in fixed time periods when those events are rare and random. Customer service calls per hour, defects per batch, accidents per day.
- Mean and variance are both equal to λ (the rate parameter)

## Bayes' Theorem: Updating Your Beliefs

This is one of the most practical concepts in all of statistics:

P(D|T) = [P(T|D) × P(D)] / [P(T|D) × P(D) + P(T|D') × P(D')]

In plain English: The probability of having a disease given a positive test equals:
(Test accuracy × Disease prevalence) / (Overall probability of testing positive)

### Why This Matters
Medical tests, fraud detection, spam filters - all these rely on Bayes' theorem. The key insight: Even with a very accurate test, if the thing you're testing for is rare, most positive results will be false positives.

Example: A cancer test that's 95% accurate sounds great, but if only 1% of people have the cancer, then most positive tests are still wrong.

## Key Takeaways

1. **Quality matters more than quantity**: Better to have good data from a smaller sample than lots of bad data

2. **Understand your assumptions**: Every statistical method assumes something about your data. Know what those assumptions are.

3. **Context is everything**: Statistical significance doesn't always mean practical importance

4. **Correlation ≠ causation**: This bears repeating. Just because things are related doesn't mean one causes the other.

5. **Sampling is crucial**: Your results are only as good as your sample. Biased sampling leads to biased conclusions.

6. **Check the shape of your data**: Many methods assume normal distributions. If your data is heavily skewed, you might need different approaches.

7. **Think in probabilities**: Very few things are certain. Statistics helps you quantify and work with uncertainty.

The goal isn't to memorize formulas (that's what computers are for), but to understand the concepts well enough to ask the right questions and interpret results sensibly. Good statistical thinking is about being appropriately skeptical and knowing the limitations of your analysis.