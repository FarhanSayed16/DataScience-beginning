import pandas as pd
import numpy as np

# --- Step 1: Load your original CSV file ---
# Make sure your CSV file is in the same folder as this script,
# or provide the full file path.
original_filename = 'Mental Health Survey Analysis.csv'
cleaned_filename = 'Mental Health Survey Analysis_Cleaned.csv'

try:
    df = pd.read_csv(original_filename)

    # --- Step 2: Clean the 'cgpa' column ---
    # This function converts a range like "3.0-3.5" into its middle value, 3.25
    def convert_cgpa(cgpa_range):
        if isinstance(cgpa_range, str):
            if '-' in cgpa_range:
                try:
                    low, high = map(float, cgpa_range.split('-'))
                    return (low + high) / 2
                except ValueError:
                    return np.nan # Handle cases that aren't clean ranges
            else:
                return float(cgpa_range)
        return np.nan # Return a standard null value for errors

    # Create a new column with the clean, numeric CGPA values
    df['cgpa_numeric'] = df['cgpa'].apply(convert_cgpa)
    print("Successfully converted CGPA ranges to numbers.")

    # --- Step 3: Clean and expand the 'stress_relief_activities' column ---
    # First, fill any potential blank activities with a placeholder like 'Unknown'
    df['stress_relief_activities'].fillna('Unknown', inplace=True)
    
    # Split the string by comma into a list of activities
    df['stress_relief_activities'] = df['stress_relief_activities'].str.split(', ')

    # Use the 'explode' function to create a new row for each activity
    # This is the key step to analyze each activity separately
    df_cleaned = df.explode('stress_relief_activities')
    print("Successfully separated multi-value stress relief activities.")

    # --- Step 4: Save the cleaned data to a new CSV file ---
    df_cleaned.to_csv(cleaned_filename, index=False)

    print(f"\n✅ Success! Your cleaned data has been saved as '{cleaned_filename}'")

except FileNotFoundError:
    print(f"Error: The file '{original_filename}' was not found. Please make sure it's in the same directory as the script.")
except Exception as e:
    print(f"An error occurred: {e}")