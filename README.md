<h1 align = "center">
  COVID-19 Analysis
</h1>

<p align="center"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/f260cad2-84ad-4928-8614-32fa2d895919" width="500" ></p>
<br>

## <h2 class="section-heading" id="project-overview"><a href="your_link_here"><img src = "https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/95a1544a-89d7-409b-901f-68b88d0ebae9" width="50" height="50"></a> Project Overview</h2>

The **COVID-19 India: Data Analysis** project involves extracting COVID-19 data from two JSON datasets. The data is then processed using Python libraries such as Pandas, Requests, Numpy, and JSON. Extracted data is converted to CSV format for further analysis. SQL queries, Excel, and statistical methods were employed to derive insights from the cleaned data. The project culminates in interactive dashboards and a presentation of the findings.

<br>

## <img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/57bfe149-df1c-4991-a4aa-f40f74c0e808" width="48" height="48"> **Table of Contents**

- [`Project Overview`](#project-overview)
- [`Problems Aim to Solve`](#objective)
- [`User's Manual`](#usage)
- [`Data Extraction and Preprocessing`](#data-extraction-and-preprocessing)
- [`Data Exploration`](#data-exploration)
- [`Insights and Visualizations`](#insights-and-visualizations)
- [`Excel Dashboard`](#dashboard)
- [`Challenges and Learnings`](#challenges_and_learnings)
- [`Future Scope`](#future_scope)
- [`Conclusion`](#conclusion)

<br>

## <h2 class="section-heading" id="objective"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/59fc3e75-7f71-472d-82d8-c0cc666a0f12" width="50" height="50"></a> Problems Aim to Solve</h2>

This project's primary goal is to conduct a comprehensive analysis of the COVID-19 pandemic using publicly accessible data sources. It involves a Jupyter notebook containing Python code designed to extract, clean, and present COVID-19 data from diverse origins. Furthermore, the project offers an interactive dashboard for in-depth data exploration.

<br>

## <h2 class="section-heading" id="usage"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/67ec35fd-902f-4d56-bb17-37b1b14cee15" width="50" height="50"></a> User's Manual</h2>

| Files/Folder| Description |
| ------------- | ------------- |
| **[`Python File`](Python%20File)** | Review the Jupyter Notebook for data extraction process and conversion from JSON to CSV files |
| **[`SQL File`](SQL%20File)** | Explore the SQL queries used for data analysis  |
| **[`Data`](Data)** | Examine the extracted and cleaned CSV files  |
| **[`Visualization`](Visualization)** | Access Excel file containing interactive dashboards and summarized insights |
| **[`Project_Presentation.pptx`](Project_Presentation.pptx)** | Gain deeper insights from the presentation of summarised data analysis and findings|

<br>

## <h2 class="section-heading" id="data-extraction-and-preprocessing"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/8e25f919-aa8c-47d1-b148-3300d1bbfe3c" width="50" height="50"></a> Data Extraction and Preprocessing</h2>

- The data extraction and preprocessing phase involved importing the above data from an API using the requests library. Upon retrieval, the JSON-formatted data was parsed using the JSON library. Two COVID-19 datasets were used for this project:
   - [`Dataset 1`](https://data.covid19india.org/v4/min/data.min.json)
   - [`Dataset 2`](https://data.covid19india.org/v4/min/timeseries.min.json)

- After the extraction process Null values were identified and replaced with zeros, and duplicates were checked for with the application of pandas functions, including grouping and sorting. To extract specific data from nested dictionaries, nested 'for' loops were employed.
- Finally, individual state and city data was saved in CSV format. The data extraction and preprocessing is documented under the [`Python File`](Python%20File) in the ".ipynb" format.


<br>

## <h2 class="section-heading" id="data-exploration"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/bb9a0f4e-a6b1-4b8d-9056-6ab2c51e1461" width="50" height="50"></a> Data Exploration</h2>

The extracted and cleaned data saved in CSV under [`Data`](Data), subsequently analyzed using a combination of SQL queries and Excel. This involved querying the structured data to retrieve relevant information and perform calculations, aggregations, and statistical operations. The analysis aimed to uncover patterns, trends, and insights related to COVID-19. SQL queries are documented under the [`SQL File`](SQL%20File) in ".sql" format, providing insights derived from various tables.
<br>
<p align="center"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/3f8f50cb-126a-451e-8ee0-33de9c561efa" ></p>


<br>

## <h2 class="section-heading" id="insights-and-visualizations"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/4eb8757a-0d1b-4b2c-bf12-7d2b789be0ab" width="50" height="50"></a> Insights and Visualizations</h2>
Statistical methods were applied to calculate recovery rates, death rates, and other relevant metrics. Visualizations, such as graphs, were created using Excel to represent key findings in an informative and engaging manner.
 - `From January 2020 to October 2021, India saw 34 million COVID-19 cases and approximately 450,000 deaths. The initial wave peaked in September 2020, and a second wave in March 2021 contributed to the highest number of confirmed cases.`
 - `Maharashtra recorded the highest number of confirmed and deceased COVID-19 cases.`
 - `Sikkim achieved the highest vaccination rate among states.`
 - `Uttar Pradesh reported the lowest vaccination rate.`
 - `The percentage of fully vaccinated is less than  50%  that of partially vaccinated.`
 - `Dadra and Nagar Haveli exhibited the highest recovery rate.`
 - `October recorded the highest number of deceased cases.`

<br>
<p align="center"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/7baa7b96-2401-464a-9929-c1d1118f9ffe" ></p>
<br>
<p align="center"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/4405cd67-12f5-4eb3-bde0-06c4a7cbf723" ></p>

<br>

## <h2 class="section-heading" id="dashboard"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/4ba2c8a1-8491-4663-b530-ce0c01103b34" width="50" height="50"></a> Excel Dashboard</h2>
The project concludes with an engaging Excel dashboard. This interface is designed to be user-friendly, offering dynamic visualizations and interactive features for effortless data exploration. Users have the flexibility to apply real-time filters, enabling a targeted analysis of specific metrics and facilitating deeper insights. The [`Visualization`](Visualization/main_dashboard.xlsx) directory contains the Excel dashboard in ".xlsx" format.
<br>
<p align="center"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/b4423393-258b-4751-8243-49b8f35ed9ab" ></p>
<p align="center"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/d75eb370-769e-43ba-a8ef-97f323535d4d" ></p>

<br>

## <h2 class="section-heading" id="challenges_and_learnings"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/00e60524-38a5-4d6a-ad9f-c4ce8fcd6ef1" width="50" height="50"></a> Challenges and Learnings</h2>
 - JSON Data Extraction: Overcame complexity in extracting COVID-19 data from nested JSON structures.
 - Data Cleaning: Addressed missing values and data inconsistencies to ensure accurate analysis.
 - Code Optimization: Enhanced efficiency in handling and analyzing large COVID-19 datasets.
 - Domain Understanding: Deepened knowledge in public health and epidemiology through data analysis.
 - Collaborative Workflow: Leveraged teamwork and version control for successful project execution.


## <h2 class="section-heading" id="future_scope"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/1b05ac88-b052-4573-9218-0de1cf471817" width="60" height="60"></a> Future Scope</h2>
 - Continuous state-level trend monitoring informs timely interventions and resource allocation.
 - Further research can explore strategies to enhance vaccine distribution and coverage, especially in states with lower vaccination rates.
 - Guide preparedness efforts for future health crises and pandemic response strategies.
 - Policymakers can leverage data-driven insights to implement targeted measures for disease control and healthcare resource allocation.


## <h2 class="section-heading" id="conclusion"><a href="your_link_here"><img src="https://github.com/Pragya-011/Covid19-Analysis/assets/118491345/d66ca611-b6f2-4bc9-91d6-4daec3f0859e" width="50" height="50"></a> Conclusion</h2>
In summary, this project successfully conducted a thorough analysis of COVID-19 data, enabling insights into the pandemic's trends and impacts. The utilization of data extraction, cleaning, and visualization techniques, coupled with an interactive dashboard, proved instrumental in understanding the evolving situation. This project contributes valuable information for ongoing pandemic management and future preparedness efforts.
