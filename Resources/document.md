# 1. Setup docker

# 2. AH4 license configuration

# 3. Run docker

# 4. Downloads and etup Eclipse to connect with AS

# 5. Create database table

# 6. Create CDS View

# 7. Create Business Service

In this section, we will define different types of service bindings used in the creation of business services. Below is a summary of the available options:

### Service Binding Types:

1. **InA-UI**
   - This type is used for applications that require integration with the SAP Fiori user interface. It ensures the service can be consumed by Fiori apps in the UI5 framework.

2. **OData V2-UI**
   - This binding type is used to create an OData service based on OData Version 2, which can be consumed by UI applications. It enables data exchange between the backend and UI components.

3. **OData V2-Web API**
   - OData V2-Web API is used for creating RESTful services that support OData Version 2 for external consumption through web APIs. This allows data access through the OData protocol over HTTP.

4. **OData V4-UI**
   - Similar to OData V2-UI, this binding type creates OData services, but using the more modern OData Version 4. This version is more efficient and supports new features like better query capabilities.

5. **OData V4-Web API**
   - Like OData V2-Web API, this option is used for creating web API services based on OData V4. It allows external applications to communicate with the backend using the latest OData version.

6. **SQL-Web API**
   - SQL-Web API is used to expose SQL-based data models as RESTful web services. It allows external systems to query databases directly over HTTP using SQL queries.

### Choosing the Right Binding Type
Depending on your use case (UI, external API, or database interaction), you can choose the appropriate service binding type to expose your data model to other applications and users.
