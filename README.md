You are a Data Scientist at a very young AgriTech startup called **"Fruits!"**, which aims to develop innovative solutions for fruit harvesting.

The company's mission is to preserve fruit biodiversity by enabling species-specific treatments through the development of **intelligent fruit-picking robots**.

To build brand awareness, the startup's first step is to release a **mobile application** that allows users to **take a photo of a fruit and receive information about it**.

For the company, this app will help educate the public about fruit biodiversity while also serving as an initial prototype for the fruit image classification engine.

Additionally, developing the mobile application will help establish the first version of the necessary **Big Data architecture**.

Your colleague Paul informs you about a document prepared by a former intern who recently left the company. This intern tested an initial approach using a Big Data environment on AWS EMR, based on a [dataset of fruit images](https://www.kaggle.com/datasets/moltean/fruits) and associated labels.

The notebook created by the intern will serve as a starting point to build part of the data processing pipeline.

**Your role is to familiarize yourself with the intern’s work and complete the data pipeline.
At this stage, training a model is not required—the main goal is to establish the foundational processing steps that will later support large-scale data handling!**

Paul’s key instructions:
- Your solution must account for rapid data growth after the project's initial release. You will therefore continue to develop PySpark scripts and leverage AWS cloud services to benefit from a Big Data architecture (EMR, S3, IAM). If preferred, you can migrate the processing to a Databricks environment.
- You must provide a **demonstration of a fully operational EMR instance and explain step by step the PySpark script**. Additionally, you need to **integrate a missing step: broadcasting the TensorFlow model weights** across the clusters (which the intern had overlooked).
- GDPR compliance is mandatory: in this context, ensure that your **setup uses servers located within Europe**.
- A critical review of the solution will be valuable before deciding whether to implement it at scale.
- Since EMR infrastructure involves costs, the EMR instance should only be kept operational during tests and demos.


**Main skills involved:**
- Familiarity with cloud platforms (AWS, Google Cloud, Databricks)
- Programming with PySpark
- Distributed computing on the cloud
