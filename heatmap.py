import pandas as pd
import matplotlib.pyplot as plt

data = {
    "Student": ["alice","charlie","diana","tinku","reethika","deepika"],
    "Hours_Studied": [5,6,7,8,6,4],
    "Math": [92,78,91,90,88,85],
    "Science": [78,95,99,96,94,88],
    "English": [78,98,97,98,94,93],
}

df = pd.DataFrame(data)

print(df.head())
import seaborn as sns
numeric_df= df[["Math","Science","English","Hours_Studied"]]
corr = numeric_df.corr()
plt.figure(figsize=(7, 5))
sns.heatmap(corr, annot=True, fmt=".2f", cmap="Spectral",linewidth=0.5, vmin=-1,vmax=1)
plt.title("Correlation heatmap")
plt.tight_layout()
plt.savefig("heatmap.png", dpi=150)
plt.show()
