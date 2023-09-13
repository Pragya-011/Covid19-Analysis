<h1 align = "center">
  COVID-19 Analysis
</h1>

<p align="center"><img src="https://mir-s3-cdn-cf.behance.net/project_modules/source/cf748494602367.5e8315fc8ca1f.gif" width="500" ></p>
<br>

## <h2 class="section-heading" id="project-overview"><a href="your_link_here"><img src="https://media.tenor.com/1_WxLFfCh6wAAAAj/covid-corona.gif" width="50" height="50"></a> Project Overview</h2>

The **COVID-19 India: Data Analysis** project involves extracting COVID-19 data from two JSON datasets. The data is then processed using Python libraries such as Pandas, Requests, Numpy, and JSON. Extracted data is converted to CSV format for further analysis. SQL queries, Excel, and statistical methods were employed to derive insights from the cleaned data. The project culminates in interactive dashboards and a presentation of the findings.

<br>

## <img src="https://clipartmag.com/images/pictures-of-animated-books-20.gif" width="48" height="48"> **Table of Contents**

- [Project Overview](#project-overview)
- [Problems Aim to Solve](#objective)
- [User's Manual](#usage)
- [Data Extraction and Preprocessing](#data-extraction-and-preprocessing)
- [Data Exploration](#data-exploration)
- [Insights and Visualizations](#insights-and-visualizations)
- [Challenges and Learnings](#challenges_and_learnings)
- [Future Scope](#future_scope)
- [Conclusion](#conclusion)

<br>

## <h2 class="section-heading" id="objective"><a href="your_link_here"><img src="https://media.tenor.com/0YvVQiyjV_UAAAAi/home-coronavirus.gif" width="50" height="50"></a> Problems Aim to Solve</h2>

This project's primary goal is to conduct a comprehensive analysis of the COVID-19 pandemic using publicly accessible data sources. It involves a Jupyter notebook containing Python code designed to extract, clean, and present COVID-19 data from diverse origins. Furthermore, the project offers an interactive dashboard for in-depth data exploration.

<br>

## <h2 class="section-heading" id="usage"><a href="your_link_here"><img src="https://user-images.githubusercontent.com/106439762/181935629-b3c47bd3-77fb-4431-a11c-ff8ba0942b63.gif" width="50" height="50"></a> User's Manual</h2>

| Files/Folder| Description |
| ------------- | ------------- |
| **`Python File`** | Review the Jupyter Notebook for data extraction process and conversion from JSON to CSV files |
| **`SQL File`** | Explore the SQL queries used for data analysis  |
| **`Data`** | Examine the extracted and cleaned CSV files  |
| **`Visualization`** | Access Excel file containing interactive dashboards and summarized insights |
| **`project_presentation.pptx`** | Gain deeper insights from the presentation of summarised data analysis and findings|

<br>

## <h2 class="section-heading" id="data-extraction-and-preprocessing"><a href="your_link_here"><img src="https://user-images.githubusercontent.com/74038190/212257472-08e52665-c503-4bd9-aa20-f5a4dae769b5.gif" width="50" height="50"></a> Data Extraction and Preprocessing</h2>

- The data extraction and preprocessing phase involved importing the above data from an API using the requests library. Upon retrieval, the JSON-formatted data was parsed using the JSON library. Two COVID-19 datasets were used for this project:
   - [Dataset 1](https://data.covid19india.org/v4/min/data.min.json)
   - [Dataset 2](https://data.covid19india.org/v4/min/timeseries.min.json)

- After the extraction process Null values were identified and replaced with zeros, and duplicates were checked for with the application of pandas functions, including grouping and sorting. To extract specific data from nested dictionaries, nested 'for' loops were employed.
- Finally, individual state and city data was saved in CSV format. The data extraction process is documented under the "Python Files" in the "Extraction_and_Preprocessing.ipynb".


<br>

## <h2 class="section-heading" id="data-exploration"><a href="your_link_here"><img src="https://media2.giphy.com/media/KCf404MB5xs43PCic5/giphy.gif" width="50" height="50"></a> Data Exploration</h2>

The extracted and cleaned data saved in "Data" was subsequently analyzed using a combination of SQL queries and Excel. This involved querying the structured data to retrieve relevant information and perform calculations, aggregations, and statistical operations. The analysis aimed to uncover patterns, trends, and insights related to COVID-19. SQL queries are documented under the "SQL File directory" in the "Covid_Project.sql" file, providing insights derived from various tables.


<br>

## <h2 class="section-heading" id="insights-and-visualizations"><a href="your_link_here"><img src="https://media.tenor.com/Tw7ociOZPzkAAAAM/spreadsheet-animated.gif" width="50" height="50"></a> Insights and Visualizations</h2>

 - Statistical methods were applied to calculate recovery rates, death rates, and other relevant metrics. Visualizations, such as graphs, were created using Excel to represent key findings in an informative and engaging manner.
 - From January 2020 to October 2021, India saw 34 million COVID-19 cases and approximately 450,000 deaths. The initial wave peaked in September 2020, and a second wave in March 2021 contributed to the highest number of confirmed cases.
 - Maharashtra recorded the highest number of confirmed and deceased COVID-19 cases.
 - Sikkim achieved the highest vaccination rate among states.
 - Uttar Pradesh reported the lowest vaccination rate.
 - The percentage of fully vaccinated is less than  50%  that of partially vaccinated.
 - Dadra and Nagar Haveli exhibited the highest recovery rate.
 - October recorded the highest number of deceased cases.

<br>

## <h2 class="section-heading" id="challenges_and_learnings"><a href="your_link_here"><img src="https://media0.giphy.com/media/cExWgK1q0qha5oiuBb/giphy.gif?cid=6c09b952x5xjy8fxzog2yw0xljinbs7aw4jjwlay1r66t5w7&rid=giphy.gif&ct=s" width="50" height="50"></a> Challenges and Learnings</h2>
 - JSON Data Extraction: Overcame complexity in extracting COVID-19 data from nested JSON structures.
 - Data Cleaning: Addressed missing values and data inconsistencies to ensure accurate analysis.
 - Code Optimization: Enhanced efficiency in handling and analyzing large COVID-19 datasets.
 - Domain Understanding: Deepened knowledge in public health and epidemiology through data analysis.
 - Collaborative Workflow: Leveraged teamwork and version control for successful project execution.

<br>

## <h2 class="section-heading" id="future_scope"><a href="your_link_here"><img src="https://user-images.githubusercontent.com/74038190/214644145-264f4759-7633-441e-9d67-d8dda9d50d26.gif" width="60" height="60"></a> Future Scope</h2>
 - Continuous state-level trend monitoring informs timely interventions and resource allocation.
 - Further research can explore strategies to enhance vaccine distribution and coverage, especially in states with lower vaccination rates.
 - Guide preparedness efforts for future health crises and pandemic response strategies.
 - Policymakers can leverage data-driven insights to implement targeted measures for disease control and healthcare resource allocation.

<br>

## <h2 class="section-heading" id="conclusion"><a href="your_link_here"><img src="https://media.tenor.com/RNVWPrQuO70AAAAi/covid19-corona.gif" width="50" height="50"></a> Conclusion</h2>
In summary, this project successfully conducted a thorough analysis of COVID-19 data, enabling insights into the pandemic's trends and impacts. The utilization of data extraction, cleaning, and visualization techniques, coupled with an interactive dashboard, proved instrumental in understanding the evolving situation. This project contributes valuable information for ongoing pandemic management and future preparedness efforts.
