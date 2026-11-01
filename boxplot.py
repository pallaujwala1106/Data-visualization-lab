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
melted= df.melt(id_vars="Student",value_vars=["Math","Science","English"],var_name="Subject",value_name="Score")
plt.figure(figsize=(8, 5))
sns.boxplot(x="Subject", y="Score", data=melted,palette=["#245acb","#2ecc71","#e74c3c"])
plt.title("Score Distributin by Subject (Box plot)")
plt.tight_layout()
plt.savefig("boxplot.png",dpi=150)
plt.show()
