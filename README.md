# Essbase Substitution Variables Reader KM

This ODI Knowledge Module allows you to read Essbase substitution variables from a specified Essbase server and write them to a target database. The KM uses the Essbase Java API to connect to the server and retrieve the variables, and it uses JDBC to write the data to the target database.

## Requirements

- Oracle Data Integrator 12c or later
- Essbase Java API (included with ODI)

## Installation

1. Copy the KM XML file to the `<ODI_HOME>/oracledi/sdk/knowledgemodules/` directory.
2. Restart the ODI Agent.

## Usage

1. Create a new ODI mapping and select the "Essbase Substitution Variables Reader" KM as the source.
2. Configure the source connection information, including the Essbase server name, username, password, and provider URL.
3. Configure the target connection information, including the JDBC connection URL, username, and password.
4. Map the output columns as needed.
5. Save and run the mapping.

The KM will retrieve the Essbase substitution variables from the specified server and write them to the target database table. The table must already exist and have the same columns as the output mapping.

## Configuration

The KM supports the following configuration options:

- `Batch Size`: The number of rows to write per batch when using batch updates. Default is 100.
- `Table Name`: The name of the target database table to write the data to. This should be specified using the ODI substitution syntax (e.g. `<%=snpRef.getTable("L", "MY_TABLE", "W")%>`).

## License

This KM is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

Created by Alex M, alex@datatogo.uk, DataToGo Limited.
