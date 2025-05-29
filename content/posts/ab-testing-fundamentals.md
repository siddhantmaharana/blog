+++
date = '2024-12-28T16:24:23-04:00'
title = 'AB Testing Fundamentals'
+++

## Basic Concepts

### What is A/B testing, and how does it differ from other types of experiments?
- A/B testing is an experimentatal design which is set up to decide which version is better based on certain metrics.
- One of the core characteristic of an A/B test is that, it should have two variants- Control variant, which is the current state or design, and a treatment variant, which is the new design that is being tested.
- Random assigment is another key characteristic of an A/B test, where the users are randomly enrolled in the experiment. Participants are randomly assigned to either control or treatment variant, and this randomization is crucial in minimizing bias and establishing causality.

### What is the role of random assignment in A/B testing?
- Randomization creates generalizability and representiveness, by ensuring that the test groups reflect the broader population and the test results can be applied to general user base.
- Randomization also ensures that it minimizes bias between different groups. This means that the known and the unknown variables would have an equal distribution between different groups, and thus there is no systematic difference between the groups.
- It also helps to establish causality better by isolating the variable being tested and eliminating the confounding variables.

### Explain the difference between control variant and treatment variant.
- Control variant, or the "current state" represents the existing version, usually the version which is in production or in use. It serves as the benchmark against which the changes are measured.
- Treatment variant is the "new design" and represents the modified version that is being tested. This version is potentially hypothesized to perform better.

### Why is it important to have a control group in A/B testing?
- A/B testing helps to reduce uncertainty around the impact of new features or designs. And, without a control group, we can't isolate if the changes are due to the new design/feature, or external factors or just random fluctuations.
- A control group thus helps by providing a baseline, and isolating the treatment effect. Following which, we can carry out a proper statistical comparison.  

### How does A/B testing help in making data-driven decisions?
- A/B testing allows scientific evidence based decision making, which are not 'based on intuition'
- It helps in establishing clear business impacts by tracking specific metrics(such as North start, granular) and quantifies the effect of changes in terms of business value
- A/B testing enables risk optimization as well, by testing features before roll out, enabling continuous improvement and, thus reducing uncertainty in business decision making

## Use Cases & Applications

### What are three primary business scenarios where A/B testing is most valuable?
Some use cases in businesses include: 
1. Conversion Rate Optimization
    - Improving conversion rates in checkout processes or signup flows
    - Testing app or web functionalities to increase user conversions
    - Optimizing marketing funnels and improving conversion rates for emails or notifications
2. New Feature Releases
    - Adding new functionalities and testing before rolling out
    - Validatin new UI/UX
3. Measuring Product Impact
    - Assessing and measuring impact on key metrics during product changes
    - Testing marketing campaigns, pricing and other strategies.

### List situations where A/B testing might not be appropriate or necessary.
Despite a lot of use cases to establish causality, there can be certain situations where A/B testing might not be appropriate or necessary
1. Insufficient data
    - There can be situations where the traffic volume is quite low or the sample size is too less
    - Less traffic would cause the test to not reach enough statistical significance
2. Ethical considerations
    - There can be instances, where testing a certain feature could harm user experience
    - Other instances where experiment on pricing can be considered ethically inappropriate
3. Lack of a clear hypothesis
    - If there's a lack of a clear hypothesis, then A/B testing can be tricky
    - Or, there are no clear metrics to measure
4. Resource constraints
    - This can happen when the cost of each sample is significant for example.
    - This can also happen when there is not enough technical infrastructure to set up an A/B test
    - High opportunity cost

### How can A/B testing be used in the follwing: e-commerce optimization, drug trials, feature releases, marketing campaigns?
- E commerce optimizations:
    - Testing checkout flow variations
    - Testing product recommendations
    - Testing UI/UX changes
- Drug Trials
    - Measuring efficacy of a drug
    - Controlling for placebo effects
    - Measuring specific health outcomes
- Feature releases
    - Managing gradual release of new features
    - Measuring UI/UX changes
    - Validating performance improvements
- Marketing Campaigns
    - Testing ad copy or designs
    - Comparing email campaign variations
    - Optimizing landing pages

### What role does sample size play in determining whether to conduct an A/B test?
Sample sizes can plays a crucial role in A/B test decisions
- Insufficient samples makes it impossible to detect true differences and can lead to unreliable results
- Too small sample sizes waste resources on inconclusive tests
- Inadequate samples can lead to incorrect business decisions

### How do ethical considerations impact A/B testing decisions?
Some tests can be technically possible but ethically inappropriate
- In terms of user experience and safety, there can be certain tests that can put users at risk, for example, testing medicine dosages
- Testing on vulnerable population without safeguards can be ethically inappropriate as well
- Testing deceptive messaging, discriminatory pricing or hiding important information from users can also be considered as unethical business practices

## Experimental Design

### What are the fundamental steps in conducting an A/B test?
These can be some of the fundamental steps necessary to conduct an A/B test
1. Goal and design specification
    - Define a clear objective and a clear hypothesis to test
    - Define a success criteria and have clear metrics to measure. For example, there can be primary and secondary metrics in addition to some monitoring or guardrail metrics
2. Random sampling
    - Determine the required sample size for the experiment
    - Ensure that the sample is representative of the population
    - Also, things like duration, timing should be kept in mind
3. Random assignment
    - Ensure that the randomization algorithm works to split the user into control and treatment groups
    - Verify the balanced distributions
4. Data collection
    - Once the test has been initiated, ensure that the logging is in place and correctly track the necessary metrics
    - Ensure that the data is consistent and check for data quality issues, such as balance or SRM issues
5. Statistical analysis
    - After the test duration is over, collect the metrics for both the groups and test for statistical significant differences
    - Account for any confounding variables
    - Draw conclusions based on the statistical tests

### What factors should be considered when designing an A/B test?
- Key factors for AB test design include, sample considerations(size and representation), metric selection(primary, secondary and guardrail) and test parameters(test and control)
- Practical constraints such as technical feasibility and resource availability should also be considered. Statistical rigor through significance levels and power analysis should be considered
- Finally, business risks, ethical considerations and clear success criteria should be considered. 

### How do you determine the duration of an A/B test?
- The duration of an AB test can be determined by following three factors, required sample size to achieve statistical significance, expected traffic or user volume and business cycle considerations.
- There should be enough time to collect sufficient data points, while accounting for any seasonal variations or cyclical variations in the users behavior.

## Randomization & Causality

### What is the relationship between randomization and bias minimization?
- Randomization helps to minimize bias by ensuring that any systematic differences or confounding variables are evenly distributed between control and treatment groups. When users are randomly assigned, the factors that can influence the outcome, both known and unknown have an equal chance in appearing in either of the groups.
- This makes randomization a critical tool for creating comparable groups and isolating the true effect of the treatment being tested.

### What are potential threats to randomization in A/B testing?
There can be potential threats to randomization. Some of them include: 
- Selection Bias: Users can self-select themselves into groups. This can also happen because of certain time based assignment patterns, or geographic or device patterns.
- Technical Issues: Cookie deletion after assignment can also cause users to move to different groups. There can be other challenges like, user using multiple devices, that can also lead to randomization issues.
- Implementation Issues: Issues with Randomization algorithm, inconsitent assignment rules, or traffic allocation issues can also cause randomization problems.
- External factors: Then there can be seasonal variations, or market events, or even changes in user behavior that can cause issues with randomization.

### How does proper randomization differ from pseudo-random assignment?
Proper randomization provides true independence and unpredictability, while pseudo-random assignments might seem random, but they can introduce subtle biases and patterns that could compromise the validity of the test

## Metrics & Measurement

### What is a North Star metric and why is it important?
- A north star or a primary metric is a key measure that best describes the success of the business. Its important because it can be single metric around which different teams can align, and guides the decision making in experiments. 
- It can indicate the fundamental business objective and, thus indicate overall business health.

### Distinguish between primary and granular metrics with examples.
- Primary metrics are usually higher-level and best describes the overall business objective. While granular metrics explain user specific behaviors, and can be more sensitive and more actionable. 
- For example, overall conversion rate can be a primary metric, while sign-up rate, click per visit can be granular metrics.

### What makes a metric "non-gameable"?
- A metric is non-gameable when it directly reflects the business impact or reflects real user value. It shouldn't be something that can be artificially inflated through superficial changes. 
- For example, a metric like revenue per visit can be non-gameable, while another metric such as time-on-page can be gamified by adding distracting elements.

### How do you evaluate if a metric is stable, sensitive and measurable?
A metric can be considered 
- Stable: If its consistent under normal circumstance, shows minimal random fluctuations, and doesn't get overly affected by external factors
- Sensitive: If it responds to relevant changes in user behavior, detects meaningful differences between the variants and changes when actual improvement occurs.
- Measurable: If it can be accurately calculated, tracked and logged, and has a clear definition and a calculation method.

### What are the different types of quantitative metrics (with examples): Means/percentiles, proportions, ratios?
- The means or percentile metrics are measures of central tendency or distribution points. They represent an average or typical value in the original unit of measurement.  For example, a metric like average sales can be obtained by dividing total sales by the number of sales. It returns the value back in the sale amount in dollars.  They preserve the original unit here(dollars), while other metrics (ratios and proportions behave different). Other examples of means metrics include median time on page, or average revenue per user or percentile load times.
- Proportions are part of a whole; they must be same unit/type in numerator and denominator. While ratios are basically the comparison between different measures(can be different units/types).
- For example, active users/total users(as active users is a subset of total users) is a proportion metric. 500/1000 or 0.5. The value lies between 0-1. Contrast that with a ratio, such as messages per user. For example, 1500 messages/500 users or 3 messages per user. Her we are comparing different measures.
- Other examples of proportion measures include signup rate(signups/visits), page abandonment rate(page abandons/total visitors), or conversion rate(purchases/vistors)
- Examples or ratio are click through rate(clicks/visits), clicks per ad impression, or pages per visit.

## Correlation & Statistical Concepts

### What is Pearson's correlation coefficient?
- Pearson's correlation coefficient is a statistical measure that quantifies the strength of linear relationship between two variables. 
It's usually denoted by R. The interpretation of the values: 
    - R>0 means that there is a positive correlation
    - R=0 mesns no correlation
    - R<0 means negative correlation
- Since Pearson's correlation coefficient is a parametric test, it relies on the assumption that the data should be normally distributed

### What are the assumptions behind correlation analysis?
- The data should follow a normal distribution. When the data is non-normal, transformations can be applied to make it normal. Or, there are other tests like Spearman's rank coefficient or Kendall's test.
- The data should satisfy the assumption of linearity

### Why doesn't correlation always imply causation?
Correlation sits at the bottom of the evidence pyramid, and is grouped with opinions and gut feelings. Observational studies or natural experiments provide stronger evidence, which require some modeling efforts and randomization. 
There are often situations where we see a strong correlation, such as page load times and conversion rates, but it doesn't tell us that slow load times is equal to lower conversions, or both are affected by another factor, which is the poor internet connection.


## Evidence Hierarchy

### Describe the hierarchy of evidence in experimental design.
The hierarchy of evidence can be thought of as a pyramid structure of establishing causation.
- The bottom layer consists of correlations, opinions and gut feelings
- The middle layer consists of observational studies/natural experiments, quasi experiments(which require high modeling efforts)
- The top layer consists of RCT or Randomly controlled trials, which are like the gold standard in establishing causation.

### What distinguishes randomized controlled experiments from observational studies?
RCT's are considered the gold standard because they:
- create generalizability and representativeness
- minimize bias between different groups through randomization
- can establish causality by isolating treatment effects
- are more trustworthy unlike other methods where randomization and control groups are absent
- have greater control unlike observational studies, where certain variables cannot be controlled.

### How do quasi-experiments differ from true experiments?
True experiments differ from the quasi-experiments in several ways
- Random assignment: In case of true experiments, there is a complete random assignment to treatment conditions, compared to a quasi-experiment, where groups are formed by natural circumstances or pre-existing conditions
- Control over Variables: There is a greater control over the independent variables and the treatment conditions in a true experiment setting, unlike quasi-experiments where researchers have to work with naturally occurring conditions.
- Research settings and applicability: True experiments are conducted in controlled environments such as labs or online platforms. While, quasi experiments are carried out in natural settings where full control isn't possible. On the other hand, true experiments are often more feasible for real-world situations where randomizations isn't possible or ethical.

## Implementation & Practical Considerations

### What infrastructure is needed to implement A/B testing?
Essential infrastructure needed for A/B testing
1. User assignment system:
    - A robust randomization algorithm and tool to effectively randomize traffic and ensure consistent assignment.
    - User identification and tracking capabilities(eg UserIds, cookies or session tracking)
2. Data logging and storage
    - Infrastructure to log hits and clickstream data about user behavior and activities
    - Data storage solutions for collecting test metrics
3. Experimentation platform
    - Feature flagging system to control variant deployment 
    - Traffic allocation mechanisms and audience sizing or filtering
    - Treatment assignment mechanisms to ensure consistent user experience
4. Analytics infrastucture
    - Statistical analytical tools for hypothesis testing
    - Real time data processing tools to process metrics and analyze results
    - Monitoring and visualization tools to real-time experiment tracking and interpreting results
5. Documentation and Experiment management tools
    - Test configuration management
    - Experiment tracking and version control
    - Results documentation and sharing capabilities
    
### What are common challenges in A/B test implementation?
Common challenges in A/B testing implementation
- Technical complexity: Ensuring consistent user assignment across sessions; maintaining proper tracking  instrumentations; handling edge cases such as users moving between different platforms; preventing contamination between variants
- Sample size and duration trade offs: Balancing the need for sufficient statistical power with business pressures for quick results; especially dealing with limited traffic or trying to detect small changes in metrics which often require large sample sizes.
- Data Quality issues: Managing inconsistent tracking; missing data points, or incorrect event logging, while ensuring proper metric computation and avoiding bias from technical issues that might affect one variant differently than other.

### How do you ensure data quality in A/B testing?
Here are some of the ways to ensure data quality in A/B testing
- Technical validation: Implement automated checks for data integrity(proper event logging, consistent event tracking, accurate metric computation), using AA testing to verify the experiment setup; and maintaining consistent instrumentation across variants to ensure there's no systematic bias.
- Statistical monitoring: Tracking key metrics stability over time; implementing and tracking guardrail metrics to detect anomalies and unexpected changes; and checks for unusual patterns in user behavior or metric distributions that might indicate data quality issues.
- Process controls: Document clear metric definitions and logging requirements, and implementing clear procedures for handling data discrepancies or tracking issues when they arise.


## Advanced Concepts

### How do you handle multiple metrics in A/B testing?
Here are some ways to handle multiple metrics in A/B testing
- Create a metric hierarchy: Establish a clear structure or hierarchy with the Primary or north start metrics, the secondary or the granular metrics and the guardrail metrics. This helps prioritize decision-making when metrics show conflicting results.
- Apply Statistical Rigor: Account for multiple comparison problems when testing several metrics simultaneously, ensure each metric meets requirements of being stable, sensitive, measurable, and non-gameable, and consider the correlation between different metrics when analyzing results
- Use Comprehensive Success Criteria: Combine multiple metrics to form more complete success/failure criteria, balance the trade-offs between different metrics (like speed vs accuracy), and ensure metrics together provide a complete picture of the experiment's impact without redundancy

### What are guardrail metrics and why are they important?
- Guardrail metrics are safety metrics that ensure core business metrics or user experience aren't negatively impacted by the test variant. While they're not the primary success metrics, they help prevent unintended negative consequences of an experiment.
- Help catch potential issues early before they impact the business significantly
- Even if your primary test metric improves, a significant drop in guardrail metrics could indicate hidden problems

### How do you balance speed of testing with reliability?
Here are some ways to balance testing speed with reliablity
- Statistical rigor vs Time trade-off: Set minimum required sample size based on desired effect size and confidence levels
- Efficient test designs: Run tests in parallel when the metrics don't interfere; maintain clear, non-overlapping user groups to avoid interaction effects
- Risk-based approach: For low risk changes(UI and copy tweaks) accept lower confidence intervals. For high risk changes, maintain strict statistical requirements.
- Use guardrail metrics with strict stopping rules for critical business metrics
- Consider the cost of potential errors vs the cost of delayed decisions

## Hypothesis Formation

### What is a hypothesis in the context of A/B testing?
- A hypothesis is a statement that serves as a starting point for further investigation
- A strong hypothesis is the one which is 
	- testable or measurable
	- declarative and concise
	- logical
	- easy to generalize 
	- results in actionable iterations
- Follows a specific format: "Based on X, we believe that if we do Y, then Z will happen, as measured by metric M"
- An example of a hypothesis can be, based on user research, we believe that if we update the recommendation algorithm, then an increase in conversion will happen, as measured by CVR

### How does a null hypothesis differ from an alternative hypothesis?
- Null hypothesis usually states that no changes will occur. For example, the conversion rate will not increase. 
- However, the alternative hypothesis in this case would be the opposite of null hypothesis, for example, the change would increase the conversion rate.

## Statistical Foundations

### What is the Central Limit Theorem and why is it important in A/B testing?
 -  CLT states that for a sufficiently large sample size, the distribution of the sample means would be normally distributed around the true population mean, regardless of the distribution of the underlying data.
 - The standard deviation of this distribution equals the standard error of the mean. 

### How does standard deviation and standard error matter in context of AB testing.
- Standard deviation is the 'average distance from the mean in your raw data'. It measures the spread in the original data. Formula: `σ = √(Σ(x - μ)²/N)` Variance is the average of squared difference from the mean.  Standard Deviation = √Variance. Variance is always positive, since it is squared. That's the reason, standard deviation is usually used as it is the same units as the original data.
- Standard error is 'how wobbly your sample average is'.  Standard Error = Standard Deviation/√n. Since it is inversely proportional to the sample size, the more the sample size is, the smaller the standard error is, and more confident you are in your sample mean.
- In A/B testing context, standard deviation show how much the individual users vary. And, the standard error shows how confident you are in the difference of A and B. The smaller the standard error, the better you can detect the small differences between A and B.
- Since variance helps calculate the required sample size, and higher variance means more standard error and thus, we need more sample size to detect the small differences between A and B.

### Under what conditions does the Central Limit Theorem apply?
Some key conditions for the CLT to hold include the following
- Must have sufficiently large sample size(typically >=30 samples)
- Observations must be independent and randomly sampled.
- The population must have finite variance and mean.

### How does sample size affect the distribution of sample means?
As sample size increases:
- The distribution of the sample means becomes more tightly centered around the true population mean.
- The standard error decreases, since it is inversely proportional to the sample size.
- The distribution becomes more reliably normal shaped(due to CLT)

### Why is normal distribution important in hypothesis testing?
- In AB testing, normal distribution is important because it lets us compare the means between the test and the control groups.
- The means of two groups, A and B are normally distributed. The difference between normal distributions is also normal. That means the difference between the means(D) also follows a normal distribution.
- Under null hypothesis, the distribution(D) centers at zero. (that means no difference between A and B)
- The normal distribution of the difference helps us calculate probability of observing differences by chance. It also helps set significance levels and evaluate p-values, and thus make decisions about rejecting or failing to reject the null hypothesis.

## Design Parameters and Error Types

### What is statistical power (1-β) and why is it important?
- Statistical power(1-β) is defined as the opposite of Type II error or false negative rate. Its commonly set at 80% in AB testing contexts.
- Power represents the test's ability to detect true effects when they exist.
- For example, if the test has 80% power, it means that if there is a real difference between A and B variants, then you have an 80% chance of detecting it. There's still a 20%(β) chance of missing it Typically 80% is used because this value represents a standard balance between having enough power to detect real effects and keeping  sample size requirements practical.
- This is important in the context of AB testing because, it helps determine the sample size and balances practicallity(resources/time) with reliability.

### Define Minimum Detectable Effect (MDE) and its role in test design.
- MDE is defined as the smallest difference that we care to capture. It's one of the key design parameters alongside power and statistical significance. It should be based on historical data from similar tests, from business contexts and requirements, and should also take into account the available resources and traffic.
- Higher baseline means smaller relative changes matter, and lower baseline means large relative changes matter.

### What is significance level (α) and how is it typically set?
- α is the Type I error rate and is also the false positive rate. It's commonly set at 5% in AB testing. 
- What it means in practice is that, its the probability of incorrectly rejecting the null hypothesis. In AB testing context, it would be the probability of declaring that a difference exists when there actually isn't one.
- The decision rule is that when the p-value is less than α, we reject the null hypothesis, and when the p-value is greater than α, then we fail to reject the null hypothesis.

### How do you balance between Type I and Type II errors? 
- Type I (α) - false positive rate: commonly set at 5%
- Type II (β) - false negative rate: power = 1-β, commonly set at 80%. This means β is 20%
- Decreasing α (reducing false positives) → Increases β (more false negatives)
- Since both of them depend on each other, we can't optimize both without increasing the sample size.

### How do you take a decision based on the p-value
- If p-value < α (0.05):
    → Reject null hypothesis
    → "We found a significant difference"
    → Risk of Type I error is 5%
- If p-value > α (0.05):
    → Fail to reject null hypothesis
    → "No significant difference found"
    → Risk of Type II error depends on effect size

### What are the different Cohen's measures?
- The purpose of the Cohen's measures is to standardize the effect size across various metrics. It enables sample size calculations, and thus provides a framework for comparing different tests. 
- Now there are two types of Cohen's measures- Cohen's h for proportions, and Cohen's d for means.
	- Cohen's h is used for proportion metrics such as conversion metrics, click-through rates and things of that nature.
	- Formula: h = 2 * (arcsin(√P₂) - arcsin(√P₁))
		- Where:
			- P₁ is baseline proportion
			- P₂ is target proportion
	- Cohen's d is used for means such as revenue based metrics or time based metrics, for example RPV and average checkout time.
	- Formula: d = (μ₂ - μ₁)/σ
		- Where:		
			- μ₁, μ₂ are means
			- σ is pooled standard deviation

### How do you use the Cohen's measures to measure the effect size?
- To interpret the effect size, the following numbers can be referred to
	- Small effect: 0.2
	- Medium effect: 0.5
	- Large effect: 0.8
- Now once the effect size is calculated, the sample size can be calculated using the following formula
	- n = 2(Zα + Zβ)² / effect_size²
	- Where:
	    - n is sample size per variant
	    - Zα is z-score for significance level (1.96 for α = 5%)
	    - Zβ is z-score for power (0.84 for 80% power)
	    - effect_size is Cohen's h or d
- Example:
	Baseline: 10% conversion
	Target: 11% conversion (10% improvement)
	Cohen's h ≈ 0.033
	Sample size needed ≈ 14,728 per variant
	With 5,000 daily visitors = 6 days test duration

## Correction Methods

### What is the difference between single comparison and multiple comparison tests?
- Single comparison tests usually involve comparing A versus just one treatment. They might deal with just a single metric and usually doesn't involve subcategories. An example can be testing a new feature against the existing current feature.
- Mutliple comparison tests involve multiple categories and granular categories(A/B/n tests). They may include multiple metrics being tested simultaneously, and thus require correction methods like Bonefferoni methods for correction. 

### What is family-wise error rate (FWER)? Why is FWER important in multiple comparison scenarios?
- FWER is defined as the probability of making at least one Type I errors while performing multiple hypothesis tests
- Imagine you're running tests on a recommendation module with 4 metrics. If you use the standard significance level of α = 0.05 for each test:
	- For each individual test, you have a 5% chance of a false positive
	- However, across all tests, the probability of at least one false positive is much higher
	- The formula for FWER is: FWER = 1 - (1 - α)^m, where m is the number of tests
	- With 4 tests: FWER = 1 - (1 - 0.05)^4 = 0.19 or 19%
	- This 19% FWER means:
		- You have a 19% chance of getting at least one false positive across all your tests
		- This is nearly 4 times higher than your intended error rate of 5%
		- This inflated error rate could lead to incorrect business decisions
- To control FWER, you can use correction methods like:
	- Bonferroni correction: Adjust α to α/m (where m is number of tests)
	- Šidák correction: A less stringent alternative to Bonferroni

### What is the Bonferroni correction and how is it calculated? when is this most appropriate?
- The Bonferroni correction is the simplest and the most popular approach for controlling the family-wise error rate in multiple correction testing
- Here's how it's calculated:	
	- Adjusted α = Individual test α / M
	- Where M is the number of tests being performed
	- For example, if running 5 tests with α = 0.05:
	    - Bonferroni adjusted α = 0.05/5 = 0.01
	    - This means each individual test must achieve p < 0.01 to be considered significant
- The Bonferroni correction is most appropriate in these scenarios:
	- When you have a relatively small number of comparisons (typically less than 10)
	- When controlling Type I errors (false positives) is critical to your business decision
	- When you need a simple, conservative approach that's easy to explain to stakeholders
	- When the tests are independent of each other
	- When the cost of a false positive is high (e.g., major product changes, high-stakes decisions)


### What is the Šidák correction?
- The Šidák correction is an alternative method for controlling the family-wise error rate in multiple comparisons. 
- The formula for Šidák correction is:
	- Adjusted α = 1 - (1 - α)^(1/m)
	- Where:
	  - α is the original significance level (typically 0.05)
	  - m is the number of independent tests
- Key differences from Bonferroni:
	1. It's slightly less conservative than Bonferroni
	2. It provides exactly the desired family-wise error rate when tests are independent
	3. For the same scenario, Šidák will give a slightly larger adjusted α than Bonferroni
- For example, if you're running 4 tests with α = 0.05:
	- Bonferroni correction: 0.05/4 = 0.0125
	- Šidák correction: 1 - (1 - 0.05)^(1/4) ≈ 0.0127
- The Šidák correction is most appropriate when:
	1. Tests are truly independent
	2. You want slightly more power than Bonferroni
	3. You need a mathematically exact correction for independent tests

## Internal Validation

### What is Sample Ratio Mismatch (SRM) and why is it important?
- SRM occurs when the allocation of the users across the variants deviates from the intended design ratio in an AB test. For example, if the planned ratio was 50/50 split but got 48/52
- SRM is important because it can invalidate the test results by
    - Breaking the fundamental assumptions about random assignment
    - Introducing a selection bias into the experiment.
    - Leading to incorrect conclusions about the treatment effects.

### How do you perform a Chi-square goodness of fit test for SRM?
- A chi-square goodness of fit test compares the observed user allocated ratios against the expected ration. 
- This is typically done using the formula
    - Calculate χ² = Σ((Observed - Expected)²/Expected) for each variant
    - Compare the calculated χ² against critical values.
    - If p-value < α (typically 0.05), there is evidence of SRM

### What are the common causes of SRM?
Some of the common causes of SRM include
- Assignment problems: incorrect bucketing or randomization algorithm issues
- Execution issues: Delayed variant start times or latency in code execution in either control or variant
- Data logging issues: Delays in logging data or bot filtering in the traffic
- Interference: Experimenter pausing variants during the test duration

### What is an A/A test and what purpose does it serve? And, how do you interpret its results.
- An A/A test shows identical experiences to two user groups to validate the experiment setup.
    - It serves as a control experiment to detect system bugs
    - Helps identify imbalances in distribution(browser, devices ets)
    - Validates randomization and data collection processes
- Interpretation guidelines
- Significant differences suggest problems with the test setup
- The observed difference between the groups represent the natural variation in metrics, and that information can be used to establish baseline variance/noise levels for different metrics.

## External Validation

### What is Simpson's Paradox and how does it affect A/B test interpretation?
- It'a a statistical phenomenom where trends between variables can emerge, disappear, or even reverse when the population is divided into segments. For example, a feature may show positive results overall, but when it is divided into different user segments, the results can be negative.
- If can affect the test interpretation by masking true treatment effects within specific segments.
- To mitigate these issues, we need to analyze results both at aggregate and segment levels. Also, we need to understand key user segments before running tests, and investigate unexpected discrepancies between overall and segmented results.

### Define novelty effect and its impact on test results
- Novelty effect is a short-lived improvement in metrics caused by users' curiosity about a new feature. This can cause the results to temporarily show an upward trend, when in reality, that might not be the long-term behavior
- It can impact the test results by leading to falsely positive initial results that decay over time.
- Some ways to address novelty effect can be increasing the test duration so that the effects stabilize over time, or even including the data for analyses after stabilization. Examining new and return user behavior separately can also be another way to mitigate this issue.

### What is change aversion and how does it differ from novelty effect?
- Change aversion is the opposite of novelty effect- when users avoid trying out a new feature due to familiarity with the old feature, even if the new feature might be better for them.
- This can also impact the test results by leading to falsely negative initial results, which may improve over time.

## Statistical Analysis - Proportions
Explain the framework for analyzing differences in proportions?
- For sufficiently large samples, the sampling distribution of differences in proportions follows a normal distribution. This allows us to use a z test to compare proportions between groups. 
- The statistical test framework is set up in the following way
    - Null hypothesis(H₀): No difference between proportions(p₁ - p₂ = 0)
    - Alternate hypothesis(H₁): There is a difference(p₁ - p₂ ≠ 0)
    - Test Statistic: Calculate the z score using the difference in proportions and the standard error
    - Compare the p-values against the significance level to make decision.

### What are confidence intervals and why are they important?
- The confidence intervals provide a range of feasible values rather than a single point estimate. The 95% CI, for example is a range that captures the true difference between the variants 95% of the time. 
- Its centered around the observed difference(what we actually measure in our A/B test), and aims to capture the true difference. 
CI = Observed Difference ± (Critical Value × Standard Error)
- As the sample size increases, the standard error decreases, and that causes the CI to shrink. 

### How do you perform a two-sample proportions z-test?
Let's try to illustrate the test using an example
- Observed Differences:
    - Control CVR: 4.3295%
    - Variant CVR: 4.3398%
    - Observed Absolute Difference: 0.0103% (this is our point estimate)
- Confidence Interval Analysis:
    - 95% CI: [-0.0181%, 0.0388%]
    - The CI is centered around our observed difference (0.0103%)
    - The width of the interval (about 0.057 percentage points) indicates our precision
    - Since the CI contains 0, we cannot be confident that there's a true difference between variants
- Statistical Significance:
    - P-value: 0.4761 > 0.05
    - Not statistically significant
    - This aligns with our CI containing 0

### What does it mean when the CI contains a 0?
- In an AB test, 0 represents "no difference" between variants
- If 0 falls within our CI, it means that 'no difference' is a plausible scenario.

###  What factors affect the width of confidence intervals?
Here are some of the key factors that affect the width of the CI
- Sample Sizes Larger sample sizes would lead to narrower Confidence intervals. This is because, more data reduces the standard error, and subsequently reduces CI
- Variance/Standard Error: Higher variance in data would lead to higher standard error, and thus the CI would increase as a result
- Confidence Level: Higher confidence levels such as 95% or 99% lead to wider intervals as the critical value increases, which leads to CI getting wider.

### How does the confidence level affect the width of the confidence interval?
- We can think of it as a trade off between confidence and precision. 95% CI means that we are 95% confident that the true value falls within our interval. Similarily, 99% confident would mean that we are 99 % confident that the true value falls within our interval. 
- To be more confident, we would need to cast a wider net. CI can be thought of as fishing with different sized nets. A smaller net(95% CI) might miss some fish but it gives a more precise location(of the true difference). Similarily, a larger net(99% CI) catches more fish, but tell us less precisely where they are.

## Statistical Analysis - Means

### What is the framework for analyzing differences in means?
- According to CLT, for sufficiently large samples, the difference in means follows a normal distribution. This allows us to use t-tests to compare the means, and calculate CI intervals, and then determine if the observed difference is significant or not.
- For this, we assume that the Null Hypothesis() is true(no difference exists). Then, we calculate how likely it would it be to observe our sample difference if H0 were true. If this probability is very small, we reject the H0, suggesting that the difference is real.

### When should you use a t-test versus other statistical tests?
- We should be using the t-test when we are comparing the means between the groups(not proportions or ranks)

## Parametric Tests

### What are parametric and non-parametric tests
- The term parameter comes from the parameter estimation of population distributions. They are called "parametric" because they assume that the data follows a specific probability distribution(usually normal) and that can be described by a fixed set of parameters. For example, a normal distribution can be explained using two parameters which are μ (population mean) and σ (population standard deviation). For these, distributions, there are parametric tests such as t-tests, z-tests, ANOVA. We estimate these parameters from the sample data and then use them in our statistical inference. 
- On the other hand, the non-parametric tests don't assume that the data follows any specific type of distribution shape. Instead of using parameters of a distribution, these tests rely on ranks, frequencies, and other order statistics. The non parametric tests are more flexible, but are less powerful than the parametric tests. They are particularly useful for skewed data, ordinal data, or cases when the parametric assumptions are violated. Examples include, Mann Whitney, Chi-square tests. 

### What are the key assumptions of parametric tests?
The key assumptions of parametric tests are as follows
- Random Sampling: Data must be randomly sampled from the population, which ensures representativenss and generalizability. 
- Independence: Each observation or data point must be independent of others. This is critical because not accounting for dependencies inflates error rates. For example, if the same user appears multiple times in the test, observations aren't independent.
- Normality: Data should follow a normal distribution. However, this can be relaxed for large enough sample sizes due to Central Limit Theorem. 

### How do you verify independence in observations?
There are ways to verify independence in observations for AB tests
- Through experimental design review: 
    - Checking the randomization unit(how users are assigned to a variant)
    - Ensuring that each user is only counted once in an experiment
    - Looking for proper user identification and tracking mechanisms
- Through data analysis
    - Checking for duplicate user IDs or session IDs
    - Looking for temporal dependencies(autocorrelation) in the metrics
    - Verifying that the user behaviour in one group is not affecting the user behaviour in the other group
- Other cases to watch out for
    - Network effects
    - Same user being counted multiple times
    - Session level metrics being treated as independent when they are coming from the same user
    - Cross device usage where the same user appears as different users.
    - Seasonal or time based dependencies in the data.

### How do violations of these assumptions affect test results?
- Violation of Random sampling: They can lead to selection bias. The results also would fail to be generalizable to the whole population.
- Violation of Independence: This might inflate the error rates(both Type I and Type II). This underestimates the standard error, making the appear more significant than they really are. For example, network effects might make the treatments appear more effective. Mutliple counts of the same user can also inflate sample size, which can make the standard error artificially smaller. This leads to a smaller p-value than we should have, and might show statistical significance where there isn't any. 
- Violation of Normality: Less severe for large samples(n>=30) due to CLT. This can be more severe if the data is more skewed or has extreme outliers.

## Ratio Metrics

### What is the delta method and why is it important?
- The delta method is a statistical technique used specifically for analyzing ratio metrics in AB testing- when you have a numerator and a denominator(For example, revenue per user, or clicks per session)
- The delta methods helps handle the additional complexity, that arises because the numerator and the denominator can vary independently. Standard tests like the t-tests don't account for the correlation between numerator and the denominator, and can't handle the variance structure of the ratios.
- The delta method solves this issue by providing a way to approximate the variance of a function(in this case, a ratio) of random variables, and taking into account the covariance between the numerator and the denominator.
- For example, two scenarios with $10 RPU can be statistically different due to their underlying variability: $1000/100 users might have a confidence interval of $10 ± $1, while $900/90 users might show $10 ± $3 due to different variances in revenue and user counts.

### What is the unit of analysis and why does it matter?
- Unit of analysis is the entity that is being analyzed in an AB test(like users, sessions, or pageviews)- essentially what you are measuring in your metrics.
- This matters because, it determines how you calculate your metrics and their variance. This must be carefully considered when dealing with ratio metrics, where the numerator and the denominator might have different units.

###  How do you estimate variance for ratio metrics?
- Using delta method, we can properly account for the variance in the numerator and the denominator.
- For a ratio R = X/Y, the variance of R is approximately: Var(R) ≈ (1/μy²)[σx² + R²σy² - 2Rσxy]
- This can be then used in z-tests. z = (R₁ - R₂)/√(Var(R₁) + Var(R₂))

## Best Practices

### Why should you avoid peeking at test results early?
- Peeking at results before reaching the designed sample size inflates the error rates, because when you repeatedly check results, you are effectively doing multiple hypothesis tests, which increases the chances of false positives.
- With each peek, you increase the probability of seeing a "significant" result by chance, even if there's no real difference. 
- For example if you peek 5 times during the test, your actual false positive rate jumps to around 14%. This means you're almost 3 times more likely to conclude there's an improvement when there isn't one.

### How do you account for day-of-week effects?
- As the users behave differently on weekends vs the weekdays, the test duration should include complete weeks of data to capture the overall behaviour patterns.
- Some practices around this can be to run the tests for complete weeks(2 weeks instead of 10 days).
- This is more pronounced in B2B sites, ecommerce websites

### What are painted door tests and when should they be used?
- Painted door tests are experiments where you test the user intent in a feature before building it. For example, adding a button for a new feature, but it's not functional yet.
- Since this measures intent/interest rather than actual usage, it can help validate the demand before putting efforts to actually build it.

### Why is isolation important in A/B testing?
Isolation in AB testing is essentially testing one feature at a time. This is crucial because:
- Attribution Clarity: When testing multiple changes, its hard to determine which change caused the desired effect
- Clean analysis: Isolated changes provide clear cause and effect relationships for the metrics.
- Debugging: If something goes wrong, its easier to identify the problematic change when the variables are isolated.