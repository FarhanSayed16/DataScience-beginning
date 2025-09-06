"""
Data Science in Python: Practice Roadmap (edit / reorder as needed)
"""

data_science_python_topics = {
    "python_fundamentals": [
        "syntax, indentation, script vs notebook",
        "variables, numeric types, strings, f-strings",
        "lists, tuples, dicts, sets, list/dict comprehensions",
        "control_flow: if / for / while / match",
        "functions, *args, **kwargs, recursion",
        "modules, packages, virtual environments (venv / pip)",
        "error_handling: try / except / finally / custom exceptions",
        "file_io: text, csv, json, pathlib",
        "iterators, generators, yield, itertools",
        "OOP: classes, dunder methods, dataclasses, typing"
    ],
    "productivity_and_quality": [
        "logging vs print",
        "linting: flake8 / ruff",
        "formatting: black",
        "type_hints + mypy / pyright",
        "testing: pytest (fixtures, parametrize)",
        "notebooks: Jupyter, Jupytext, reproducibility"
    ],
    "data_manipulation": [
        "numpy: arrays, broadcasting, vectorization, ufuncs",
        "pandas: Series, DataFrame, indexing, loc/iloc",
        "missing_data_handling",
        "groupby, pivot, melt, merge/join",
        "datetime handling, categorical data",
        "performance: apply vs vectorization vs cython/numba"
    ],
    "data_acquisition": [
        "reading: csv, json, parquet, feather, excel",
        "APIs: requests, pagination, auth basics",
        "web_scraping: basics with BeautifulSoup / lxml",
        "databases: sqlite, basic SQL, sqlalchemy ORM core concepts"
    ],
    "exploratory_data_analysis": [
        "descriptive_statistics",
        "outlier_detection_basic",
        "correlation, covariance",
        "feature_distributions",
        "profiling (pandas-profiling / ydata-profiling)"
    ],
    "visualization": [
        "matplotlib: figure, axes, subplots",
        "seaborn: distribution, relational, categorical plots",
        "plotly basics (optional interactive)",
        "customization: styles, color palettes, annotations",
        "dashboards (streamlit / dash basics)"
    ],
    "statistics_probability": [
        "probability_distributions: normal, binomial, poisson",
        "sampling, central_limit_theorem",
        "confidence_intervals",
        "hypothesis_testing: t-test, chi-square, anova",
        "p_value vs effect_size",
        "correlation vs causation"
    ],
    "feature_engineering": [
        "scaling: standard, minmax, robust",
        "encoding: one-hot, target, ordinal",
        "text_basics: tokenization, tf-idf",
        "date_parts, interaction_features",
        "missing_value_strategies",
        "feature_selection: variance, mutual_info, model-based"
    ],
    "machine_learning_core": [
        "workflow: train/test split, cross_validation",
        "metrics: accuracy, precision, recall, f1, roc_auc, rmse, mae",
        "overfitting vs underfitting, bias-variance",
        "pipelines, ColumnTransformer",
        "model_persistence: pickle / joblib"
    ],
    "models_supervised": [
        "linear_regression, regularization (ridge, lasso)",
        "logistic_regression",
        "tree_based: decision_tree, random_forest, gradient_boosting",
        "xgboost / lightgbm (basic use)",
        "svm (linear vs kernel)",
        "kNN basics",
        "naive_bayes (text)"
    ],
    "models_unsupervised": [
        "kmeans, elbow / silhouette",
        "hierarchical_clustering",
        "dbscan basics",
        "dimensionality_reduction: pca, t-sne (interpretation caution), umap"
    ],
    "model_tuning": [
        "grid_search vs randomized_search",
        "cross_validation strategies",
        "hyperparameter_importance",
        "learning_curves, validation_curves"
    ],
    "model_interpretation": [
        "feature_importances",
        "permutation_importance",
        "partial_dependence_plots",
        "shap_values (intro)",
        "fairness_basic_checks"
    ],
    "time_series": [
        "datetime_index, resampling",
        "window_functions: rolling, expanding",
        "decomposition (trend/seasonality)",
        "basic forecasting: naive, moving_average, arima (conceptual)",
        "train_test_split temporal awareness"
    ],
    "text_nlp_basics": [
        "cleaning, tokenization",
        "stopwords, stemming vs lemmatization",
        "vectorization: bag_of_words, tfidf",
        "intro_embeddings (word2vec / sentence-transformers)"
    ],
    "deep_learning_foundations": [
        "when_to_use vs classical_ml",
        "tensors basics (numpy vs torch)",
        "simple_feedforward_network",
        "training_loop concepts: forward, loss, backward, optimize"
    ],
    "deployment_reproducibility": [
        "environment_lock: requirements.txt / pip-tools",
        "serialization: model + preprocessing",
        "fastapi basic endpoint",
        "docker fundamentals (optional)",
        "monitoring: data_drift awareness"
    ],
    "big_data_and_scaling_intro": [
        "vectorization first",
        "chunked_processing",
        "dask / polars basics (optional)",
        "cloud storage patterns (conceptual)"
    ],
    "data_ethics_and_practice": [
        "privacy_basics",
        "bias_detection_awareness",
        "documentation and reproducibility standards"
    ],
    "soft_skills": [
        "clear_notebook_storytelling",
        "writing_readme_and_reports",
        "communicating_findings_concisely"
    ]
}

# Simple helper to print categories neatly
if __name__ == "__main__":
    for k, v in data_science_python_topics.items():
        print(f"{k}:")
        for item in v:
            print(f"  - {item}")
        print()

"""
Suggested practice approach:
1. Daily: small coding drills (fundamentals + pandas)
2. Weekly: end-to-end mini project (clean -> explore -> model -> report)
3. Maintain: a utilities.py file of reusable helpers
4. Track: a learning_log.md summarizing lessons and mistakes
"""

# TODO: Start with python_fundamentals then parallel small pandas tasks.
# TODO: Create a practice plan mapping weeks to categories.