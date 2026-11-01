import pandas as pd
import numpy as np
data = {
    "student" : ["alice","charlie","diana","tinku","reethika","deepika"],
    "Math" : [92,78,91,90,88,85],
    "Science" : [78,95,99,96,94,88],
    "English" : [78,98,97,98,94,93],
       }
df = pd.DataFrame(data)
print(df.head())
import matplotlib.pyplot as plt
plt.figure(figsize=(7, 5))
plt.hist(df["Math"],bins=5, color="#9b59b6", edgecolor="black", alpha=0.8)
plt.title("Distribution of Math Scores")
plt.xlabel("Score Range")
plt.ylabel("Number of Students")
plt.axvline(df["Math"].mean(), color="red", linestyle="--", label=f'Mean:{df["Math"].mean() : .1f}')
plt.legend()
plt.tight_layout()
plt.savefig("histogram.png", dpi=150)
plt.show()
