Idea of the project is do Classification ( Decision Tree , Nave Bayes, KNN )</br>

Given big dataset.csv</br>

1- We implemented some functions</br>

Such as:</br>
	A- Load data as Data Frame using pd.read_csv() funtion</br>
	B- Print first 5 records and last 5 records using head(), tail()</br>
	C- Split dataset 70% training set and 30% test set using sklearn.model_selection and train_test_split() function</br>
	D- Use DecisionTreeClassifier to build module using (Gini, entropy) criterions , Training the module and predict target values by apply test set on Module</br>
	to see how Module performance. </br>
	E- Calculate Confusion Matrix and print it using heatmap from sns library</br>
	F- Print classification report( precision, recall, f1-score,Accuracy and support) using classification_report function</br>
	G- draw Decision Tree using sklearn.tree import export_graphviz to convert DT to dot file & use pydot library to draw graph from dot file</br>
	H- Use another Classifier "Naive Bayes" to do predicate with future values. </br>
	   1- Use Model of Naive bayes called GaussainNB</br>
	   2- do fit(), Train, predicate future o/p by using GaussainNB </br>
	   3- Calculate Confusion matrix Draw it use Heatmap, print Classification report</br>
</br>
	I- Use KNN classifier to do same steps above 
	   1- calculate correlation between attributes and class label and select the first 2- attributes have highest correlation using corr_mat[class label].sort_values(ascending=False)
	   2- Draw results use heatmap
	   3- Use KNeighborsClassifier to use KNN model and use K value, euclidean metric to calculate distance
	   4- claculate Confusion matrix, Classification report, plot Confusion matrix
	   5- plot the difference accuracy between actual test label and predicated class label.
