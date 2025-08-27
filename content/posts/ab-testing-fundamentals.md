+++
date = '2022-12-28T16:24:23-04:00'
title = 'AB Testing Fundamentals'
tags = ["experimentation","statistics"]
+++

I've been running A/B tests for a while now, and I keep coming back to these fundamental concepts. Writing them down helps me think through them more clearly - maybe they'll be useful for you too.

## What A/B Testing Actually Is

A/B testing is basically a controlled experiment to figure out which version of something works better. The key word here is "controlled" - you're not just comparing random things, you're systematically testing one change at a time.

The core characteristics that make it work:
- **Two variants**: Control (what you have now) and treatment (what you're testing)
- **Random assignment**: Users get randomly bucketed into groups
- **Measurement**: You track specific metrics to see what happens

That random assignment piece is crucial. Without it, you're just looking at correlations, and we all know correlation doesn't equal causation.

### Why Random Assignment Matters

Random assignment does three important things:

1. **Creates representative groups**: When done right, your test groups should look like mini versions of your broader user base
2. **Minimizes bias**: Both known and unknown variables get evenly distributed between groups
3. **Establishes causality**: By controlling for everything except your one change, you can actually say that change caused the difference you observed

### Control vs Treatment

This is straightforward but worth being explicit about:
- **Control**: The current state, your baseline, what users see today
- **Treatment**: The new thing you're testing, hopefully an improvement

## When A/B Testing Makes Sense (And When It Doesn't)

A/B testing is great for:

**Conversion Rate Optimization**
- Testing checkout flows, signup processes, email campaigns
- Optimizing calls-to-action, form designs, landing pages

**Feature Releases**
- Rolling out new functionality gradually
- Validating UI/UX changes before full launch

**Product Impact Measurement**
- Understanding how changes affect key business metrics
- Testing marketing campaigns and pricing strategies

But it's not always the right tool:

**When you don't have enough traffic** - If you can't reach statistical significance in a reasonable timeframe, don't bother

**Ethical concerns** - Some tests could harm users or feel manipulative

**No clear hypothesis** - If you can't articulate what you expect to happen and why, you're not ready to test

**Resource constraints** - Sometimes the cost of setting up and running the test outweighs the potential benefit

## Setting Up Tests Properly

### The Process I Follow

1. **Define the goal clearly** - What are you trying to improve and why?
2. **Form a testable hypothesis** - "Based on X observation, if we change Y, then Z will happen because of reason R"
3. **Choose your metrics** - Primary metric (the thing you care most about), secondary metrics (other things worth tracking), guardrail metrics (things that shouldn't get worse)
4. **Calculate sample size** - How many users do you need to detect a meaningful difference?
5. **Run the test** - Resist the urge to peek at results early
6. **Analyze and act** - Look at the data, make a decision, document what you learned

### Picking Good Metrics

I think about metrics in three categories:

**Primary/North Star Metrics**: The big picture stuff that directly reflects business value. Revenue per visitor, conversion rate, user retention.

**Granular Metrics**: More specific user behaviors that are easier to move and give you insight into what's happening. Click-through rate, time on page, signup rate.

**Guardrail Metrics**: Things you don't want to break while optimizing other things. Site speed, error rates, user satisfaction scores.

A good metric is:
- **Stable**: Doesn't fluctuate wildly for no reason
- **Sensitive**: Actually responds when you make meaningful changes  
- **Measurable**: You can track it accurately and consistently
- **Non-gameable**: Hard to manipulate without creating real value

## Understanding Statistical Concepts

### The Math You Need to Know

**Statistical Significance (α)**: Usually set at 5%. This is your false positive rate - how often you'll think there's a difference when there isn't one.

**Statistical Power (1-β)**: Usually set at 80%. This is your ability to detect a real difference when it exists.

**Minimum Detectable Effect (MDE)**: The smallest change you care about detecting. Smaller effects require bigger sample sizes.

The relationship between these determines your sample size. You can't optimize all three - if you want to detect smaller effects with higher confidence, you need more data.

### Effect Size and Cohen's Measures

Effect size tells you not just whether there's a difference, but how big that difference is. Cohen's measures standardize this:

**For proportions (like conversion rates)**: Cohen's h
- Formula: h = 2 × (arcsin(√P₂) - arcsin(√P₁))

**For means (like revenue per user)**: Cohen's d  
- Formula: d = (μ₂ - μ₁)/σ

The interpretation is the same for both:
- 0.2 = Small effect
- 0.5 = Medium effect  
- 0.8 = Large effect

### Sample Size Calculation

Once you have your effect size, you can calculate sample size:
n = 2(Zα + Zβ)² / effect_size²

Example: Testing a checkout flow change
- Baseline conversion: 10%
- Target conversion: 11% (10% relative improvement)
- Cohen's h ≈ 0.033 (small effect)
- Sample size needed: ~14,728 per variant
- With 5,000 daily visitors: ~6 day test

## Common Pitfalls and How to Avoid Them

### Multiple Comparisons Problem

When you test multiple metrics simultaneously, your false positive rate inflates. If you test 4 metrics at 5% significance each, your overall false positive rate jumps to about 19%.

Solutions:
- **Bonferroni correction**: Divide your significance level by number of tests
- **Hierarchy approach**: Have one primary metric, treat others as secondary
- **Accept the tradeoff**: Sometimes a slightly higher false positive rate is acceptable

### Sample Ratio Mismatch (SRM)

This happens when your user split deviates from what you planned (e.g., 48/52 instead of 50/50). It usually indicates a problem with your randomization.

Check for SRM using a chi-square test. If you find it, investigate:
- Randomization algorithm bugs
- Delayed start times for variants
- Data logging issues
- Bot filtering differences

### Peeking at Results

Every time you check results before reaching your planned sample size, you increase your false positive rate. What feels like 5% significance becomes ~14% if you peek 5 times.

Solutions:
- Set a test duration and stick to it
- Use sequential analysis methods if you must monitor
- Only stop early for dramatic effects or serious problems

### External Validity Issues

**Simpson's Paradox**: Results can flip when you segment your data. Always check if your overall results hold within important user segments.

**Novelty Effects**: Users might try new things just because they're new. Run tests long enough for behavior to stabilize.

**Change Aversion**: The opposite problem - users might avoid new features initially even if they're better.

## Advanced Considerations

### Ratio Metrics and the Delta Method

When your metric is a ratio (like revenue per user), standard t-tests don't work properly because the numerator and denominator can vary independently.

The delta method accounts for this by considering the covariance between numerator and denominator. For a ratio R = X/Y:

Var(R) ≈ (1/μy²)[σx² + R²σy² - 2Rσxy]

This matters because two scenarios with the same ratio can have very different confidence intervals depending on the underlying variance.

### Handling Multiple Metrics

In practice, you usually care about more than one metric. Here's how I approach it:

1. **Establish hierarchy**: One primary metric, several secondary ones, guardrails
2. **Account for correlations**: Related metrics will move together
3. **Set decision rules upfront**: What combination of results will make you ship?
4. **Use statistical corrections when appropriate**: But don't be overly conservative

## Practical Implementation

### Infrastructure You'll Need

**User Assignment**:
- Reliable randomization algorithm
- Consistent user identification (cookies, user IDs)
- Proper traffic allocation controls

**Data Collection**:
- Event logging for all relevant metrics
- Data quality monitoring
- Real-time dashboards for monitoring

**Analysis Tools**:
- Statistical testing capabilities
- Confidence interval calculations
- Segmentation and drilling-down features

### Quality Assurance

**A/A Tests**: Run identical experiences to two groups to validate your setup. If you see significant differences, you have a problem.

**Balance Checks**: Verify that your randomization worked by checking that user characteristics are balanced between groups.

**Data Quality Monitoring**: Watch for unusual patterns, missing data, or technical issues that could bias results.

## Making Decisions

At the end of the day, A/B testing is about making better decisions. Here's my framework:

1. **Statistical significance**: Is the difference real or likely due to chance?
2. **Practical significance**: Is the difference big enough to matter?
3. **Business context**: Does this align with your strategy and priorities?
4. **Risk assessment**: What are the downsides if you're wrong?
5. **Implementation cost**: Is the benefit worth the effort to build and maintain?

## Key Takeaways

A/B testing is a powerful tool, but it's not magic. It requires:
- Clear thinking about what you're trying to learn
- Proper statistical setup and execution  
- Careful interpretation of results
- Good judgment about when and how to act

The math is important, but the thinking is more important. Start with a clear hypothesis, design a clean test, and be honest about what the data tells you.

Most importantly: A/B testing is about learning, not just optimizing. Even "failed" tests teach you something valuable about your users and your product.