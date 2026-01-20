PDS4 2001 Mars Odyssey Mission Data Dictionary User's Guide  
[Last edited](#edit-history): 2026-01-20  
  
# Introduction  
1. Purpose of this User's Guide  
    - This User's Guide provides an overview of the 2001 Mars Odyssey Mission Data Dictionary. The guide details how to include the dictionary in a PDS4 label, describes the organization of the dictionary's classes and attributes, provides definitions for these classes and attributes, and lists example excerpts from labels that use them.  
2. Audience  
    - This User's Guide should be useful to data providers intending to archive 2001 Mars Odyssey data with PDS as well as PDS Nodes who are working with these data providers.  
  
# Overview of the 2001 Mars Odyssey Mission Data Dictionary  
The 2001 Mars Odyssey Mission Data Dictionary contains classes and attributes specific to the 2001 Mars Odyssey mission and its instruments.  
Steward: Politte, Daniel, PDS Geosciences Node, dvpolitte@wustl.edu  
  
# Document Outline  
1. [How to Include the 2001 Mars Odyssey Mission Data Dictionary in a PDS4 Label](#how-to-include-the-2001 Mars Odyssey-Mission-data-dictionary-in-a-pds4-label)  
2. [Organization of Classes and Attributes](#organization-of-classes-and-attributes)  
    1. [Class Organization](#class-organization)  
    2. [Attributes by Class](#attributes-by-class)  
3. [Definitions](#definitions)  
    1. [Classes (in alphabetical order)](#classes-in-alphabetical-order)  
    2. [Attributes (in alphabetical order)](#attributes-in-alphabetical-order)  
4. [Examples](#examples)  
5. [Edit History](#edit-history)  
  
# How to Include the 2001 Mars Odyssey Mission Data Dictionary in a PDS4 Label  
The dictionary consists of a set of files with names in the form PDS4_ODY_xxxx_yyyy.ext, where  
- xxxx = the PDS4 Information Model version, e.g. 1L00  
- yyyy = the 2001 Mars Odyssey Mission Data Dictionary version, e.g. 1030  
  
and the file extensions are  
  
- .csv = A comma-separated value table of dictionary attributes  
- .JSON = The dictionary contents in JSON format  
- .sch = The dictionary "rules" as an XML Schematron file  
- .txt = The report generated when the dictionary was built  
- .xml = The PDS4 label that describes this set of files  
- .xsd = The dictionary contents as an XML schema file  
  
Only the schema and Schematron files are needed for validating a PDS4 label.  
  
The latest version of this dictionary may be found on the PDS web site at https://pds.nasa.gov/datastandards/dictionaries/index-missions.shtml#ody.  
  
The following is an example showing the use of this dictionary in a PDS4 label.  
  
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1L00.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<?xml-model href="https://pds.nasa.gov/pds4/mission/ody/v1/PDS4_ODY_1L00_1030.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<Product_Observational xmlns="http://pds.nasa.gov/pds4/pds/v1"
    xmlns:ody="http://pds.nasa.gov/pds4/mission/ody/v1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1L00.xsd
                        https://pds.nasa.gov/pds4/mission/ody/v1/PDS4_ODY_1L00_1030.xsd">
```  
  
The following is a schematic example showing the location of every 2001 Mars Odyssey Mission Data Dictionary class and attribute in a PDS4 label. Note that not all classes and attributes may be mutually compatible, and the example does not include any recursion, even if recursion is allowed.  
```
<Observation_Area>
  ...
  <Mission_Area>
    <ody:ODY_Parameters>
      <ody:product_type/>
      <ody:orbit_number/>
      <ody:THEMIS_Observation_Context>
        <ody:spacecraft_orientation_pitch/>
        <ody:spacecraft_orientation_roll/>
        <ody:spacecraft_orientation_yaw/>
        <ody:spacecraft_pointing_mode/>
      </ody:THEMIS_Observation_Context>
      <ody:THEMIS_Instrument_Attributes>
        <ody:detector_id/>
        <ody:flight_software_version_id/>
        <ody:command_sequence_number/>
        <ody:spatial_summing/>
        <ody:interframe_delay/>
        <ody:exposure_duration/>
        <ody:inst_compression_name/>
        <ody:gain_number/>
        <ody:offset_number/>
        <ody:rice_flag/>
        <ody:time_delay_integration_flag/>
      </ody:THEMIS_Instrument_Attributes>
      <ody:THEMIS_Image_Properties>
        <ody:image_id/>
        <ody:image_duration/>
        <ody:inst_compression_ratio/>
        <ody:focal_plane_temperature/>
        <ody:missing_scan_lines/>
        <ody:partial_scan_lines/>
        <ody:uncorrected_sclk_start_count/>
        <ody:image_description/>
        <ody:maximum_brightness_temperature/>
        <ody:minimum_brightness_temperature/>
      </ody:THEMIS_Image_Properties>
      <ody:GRS_Observation_Information>
        <ody:release_number/>
        <ody:product_type/>
        <ody:product_version_id/>
        <ody:mission_phase_name/>
        <ody:center_latitude/>
        <ody:start_solar_longitude/>
        <ody:stop_solar_longitude/>
        <ody:spacecraft_clock_start/>
        <ody:spacecraft_clock_stop/>
      </ody:GRS_Observation_Information>
    </ody:ODY_Parameters>
  </Mission_Area>
  ...
</Observation_Area>
```  
  
The namespace for the 2001 Mars Odyssey Mission Data Dictionary is http://pds.nasa.gov/pds4/mission/ody/v1, abbreviated "ody:".  
  
# Organization of Classes and Attributes  
  
## Class Organization  
Below is a structured list showing the organization of classes, ordered by appearance in the PDS4 label. Each class name is linked to its complete definition in the [Definitions](#definitions) section.  
- [ODY_Parameters](#ody_parameters)  
  - [THEMIS_Observation_Context](#themis_observation_context)  
  - [THEMIS_Instrument_Attributes](#themis_instrument_attributes)  
  - [THEMIS_Image_Properties](#themis_image_properties)  
  - [GRS_Observation_Information](#grs_observation_information)  
  
## Attributes by Class  
The attributes immediately under each class (if any) are listed below. Both classes and attributes are ordered by appearance in the PDS4 label; however, each class is listed only once, even if that class can appear in more than one place in a PDS4 label. Each class and attribute name is linked to its complete definition in the [Definitions](#definitions) section.  
  
### [ODY_Parameters](#ody_parameters) (attribute list)  
- [product_type](#product_type)  
- [orbit_number](#orbit_number)  
  
### [THEMIS_Observation_Context](#themis_observation_context) (attribute list)  
- [spacecraft_orientation_pitch](#spacecraft_orientation_pitch)  
- [spacecraft_orientation_roll](#spacecraft_orientation_roll)  
- [spacecraft_orientation_yaw](#spacecraft_orientation_yaw)  
- [spacecraft_pointing_mode](#spacecraft_pointing_mode)  
  
### [THEMIS_Instrument_Attributes](#themis_instrument_attributes) (attribute list)  
- [detector_id](#detector_id)  
- [flight_software_version_id](#flight_software_version_id)  
- [command_sequence_number](#command_sequence_number)  
- [spatial_summing](#spatial_summing)  
- [interframe_delay](#interframe_delay)  
- [exposure_duration](#exposure_duration)  
- [inst_compression_name](#inst_compression_name)  
- [gain_number](#gain_number)  
- [offset_number](#offset_number)  
- [rice_flag](#rice_flag)  
- [time_delay_integration_flag](#time_delay_integration_flag)  
  
### [THEMIS_Image_Properties](#themis_image_properties) (attribute list)  
- [image_id](#image_id)  
- [image_duration](#image_duration)  
- [inst_compression_ratio](#inst_compression_ratio)  
- [focal_plane_temperature](#focal_plane_temperature)  
- [missing_scan_lines](#missing_scan_lines)  
- [partial_scan_lines](#partial_scan_lines)  
- [uncorrected_sclk_start_count](#uncorrected_sclk_start_count)  
- [image_description](#image_description)  
- [maximum_brightness_temperature](#maximum_brightness_temperature)  
- [minimum_brightness_temperature](#minimum_brightness_temperature)  
  
### [GRS_Observation_Information](#grs_observation_information) (attribute list)  
- [release_number](#release_number)  
- [product_type](#product_type)  
- [product_version_id](#product_version_id)  
- [mission_phase_name](#mission_phase_name)  
- [center_latitude](#center_latitude)  
- [start_solar_longitude](#start_solar_longitude)  
- [stop_solar_longitude](#stop_solar_longitude)  
- [spacecraft_clock_start](#spacecraft_clock_start)  
- [spacecraft_clock_stop](#spacecraft_clock_stop)  
  
# Definitions  
  
## Classes (in alphabetical order)  
  
### GRS_Observation_Information  
The GRS_Observation_Information class is the container for GRS-related metadata elements.  
- [go to attribute list](#grs_observation_information-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### ODY_Parameters  
The ODY_Parameters class is the container for mission-specific metadata elements.  
- [go to attribute list](#ody_parameters-attribute-list)  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### THEMIS_Image_Properties  
The THEMIS_Image_Properties class contains attributes specific to THEMIS images.  
- [go to attribute list](#themis_image_properties-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### THEMIS_Instrument_Attributes  
The THEMIS_Instrument_Attributes class contains attributes specific to the THEMIS instrument.  
- [go to attribute list](#themis_instrument_attributes-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### THEMIS_Observation_Context  
The THEMIS_Observation_Context class contains attributes specific to THEMIS observations.  
- [go to attribute list](#themis_observation_context-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
## Attributes (in alphabetical order)  
  
### *center_latitude*  
 Center latitude of the 5 degree latitude band of the summed gamma spectra dataset  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *command_sequence_number*  
Numeric identifier for the sequence of commands sent to the Odyssey spacecraft which include this THEMIS observation.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: -9223372036854775808  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *detector_id*  
Abbreviated name of THEMIS camera used to collect this observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - IR  
    - Description: Thermal Emission Imaging System Infrared instrument  
  - VIS  
    - Description: Thermal Emission Imaging System Visible instrument  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *exposure_duration*  
The length of time the THEMIS VIS detector array is exposed per frame in an image.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *flight_software_version_id*  
The version of THEMIS instrument flight software used to acquire the observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *focal_plane_temperature*  
Temperature of the THEMIS VIS camera focal plane array at the time of the observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *gain_number*  
The gain value of the THEMIS IR camera; a multiplicative factor used in the analog to digital conversion.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: -9223372036854775808  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *image_description*  
Description of the observation written by the THEMIS Mission Planner.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *image_duration*  
The length of time required to collect all frames of all bands in the downlinked image.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *image_id*  
Numeric identifier for this observation within the onboard command sequence.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: -9223372036854775808  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *inst_compression_name*  
The type of compression applied to the THEMIS VIS data onboard the spacecraft and removed before storage in the raw data file.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *inst_compression_ratio*  
The ratio of the size of the uncompressed data file to the compressed data file.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *interframe_delay*  
The time between successive frames of a THEMIS VIS observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *maximum_brightness_temperature*  
Maximum brightness temperature value measured within the image.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *minimum_brightness_temperature*  
Minimum brightness temperature value measured within the image.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *missing_scan_lines*  
The total number of scan lines missing from a THEMIS IR image when it was received at Earth.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: -9223372036854775808  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *mission_phase_name*  
 The mission_phase_name attribute provides the mission-defined name of a time period within the mission.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - AEROBRAKING  
    - Description: ODY Aerobraking mission phase: 2001-10-28 thru 2002-02-17  
  - CRUISE  
    - Description: ODY Cruise mission phase: 2001-04-07 thru 2001-10-22  
  - EXTENDED MISSION  
    - Description: ODY Extended Mission phases: 2004-10-01 to present  
  - MAPPING  
    - Description: ODY Mapping mission phase: 2002-02-18 thru 2004-09-30  
  - ORBIT INSERTION  
    - Description: ODY Orbit Insertion mission phase: 2001-10-23 thru 2001-10-27  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *offset_number*  
The offset value of the THEMIS IR camera; the offset value multiplied by a constant voltage is added to the measured voltage in the analog to digital conversion.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: -9223372036854775808  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *orbit_number*  
The orbit_number attribute identifies the orbit number when the observation was taken.  
- PDS4 data type: ASCII_NonNegative_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 18446744073709551615  
- Regex Pattern: [0-9]+  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *partial_scan_lines*  
The number of lines in a summed THEMIS IR image which were produced by averaging less than N lines of the original non-summed image, where N is the value of the spatial_summing keyword. Value of N/A used for spatial_summing=1.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *product_type*  
 The product_type attribute identifies the type of data product.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - AVERAGED_HEND_DATA  
    - Description: Averaged HEND Data products are composed of averaged normalized counting rates, orbital neutron fluxes and the associated timing, spatial and engineering information.  
  - AVERAGED_NEUTRON_DATA  
    - Description: The AND product contains average fluxes for epithermal, thermal, and fast neutrons.  
  - CDR  
    - Description: Calibrated Data Record  
  - CHAN_DATA  
    - Description: GRS Chan Data  
  - COMMAND_LIST  
    - Description: GRS Command List  
  - CORRECTED_GAMMA_SPECTRA  
    - Description: Corrected gamma ray spectra with associated data.  
  - DDR  
    - Description: Derived Data Record  
  - DERIVED_HEND_DATA  
    - Description: Derived HEND data are composed of raw counts, a background component, background subtracted counts and the associated timing and spatial information.  
  - DERIVED_NEUTRON_DATA  
    - Description: The DND product contains normalized neutron counting rates for all four of the Neutron Spectrometer prisms, from which thermal and epithermal neutron count rates are determined.  
  - EDR  
    - Description: Experiment Data Record  
  - ENG_DATA  
    - Description: GRS Engineering Data  
  - E_KERNEL  
    - Description: GRS E Kernel Data  
  - GAMMA_SPECTRA  
    - Description: This the raw uncalibrated gamma ray spectra and associated data.  
  - GRS_SPECIAL  
    - Description: GRS Special, one-off table.  
  - HEND_SPECTRA  
    - Description: The raw uncalibrated hend spectra and associated data  
  - MESSAGE_LOG  
    - Description: GRS Message Log  
  - NEUTRON_SPECTRA  
    - Description: The raw uncalibrated neutron detector counts and associated data  
  - PROFILE_DATA  
    - Description: Profile spectra and associated data.  
  - PULSER_SPECTRA  
    - Description: Pulser spectrum and associated data.  
  - RDR  
    - Description: Reduced Data Record  
  - SUMMED_GAMMA_SPECTRA  
    - Description: Sums of corrected gamma spectra with ancillary data.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *product_version_id*  
 The product_version_id element identifies the version of an individual data product.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *release_number*  
release_number is the identifier of a scheduled release of ODY data from PDS. The first ODY data release has release_number "0001". The release_number for a given product is always the first release in which it appears, and does not change if the product is revised later.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *rice_flag*  
Status of onboard lossless compression algorithm applied before downlinking the THEMIS IR observation and removed before storage in the raw data file.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - Disabled  
    - Description: onboard lossless compression was disabled  
  - Enabled  
    - Description: onboard lossless compression was enabled  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_start*  
The spacecraft_clock_start_count attribute provides the value of the spacecraft clock at the beginning of a time period of interest.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Regex Pattern: [0-9]{12}  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_stop*  
The spacecraft_clock_stop_count attribute provides the value of the spacecraft clock at the end of a time period of interest.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Regex Pattern: [0-9]{12}  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_orientation_pitch*  
Odyssey spacecraft pitch orientation during this observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_orientation_roll*  
Odyssey spacecraft roll orientation during this observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_orientation_yaw*  
Odyssey spacecraft yaw orientation during this observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_pointing_mode*  
Description of the Odyssey spacecraft pointing mode during this observation; see ODY_ORIENT_POINTING.txt for definitions of valid modes.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spatial_summing*  
Onboard spatial average of NxN set of pixels, where N is the value of the keyword. A SPATIAL_SUMMING value equal to 1 indicates that no spatial averaging has been applied to the observation.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: -9223372036854775808  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *start_solar_longitude*  
 Solar longitude (Ls) at the beginning of the observation period  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *stop_solar_longitude*  
 Solar longitude (Ls) at the end of the observation period  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *time_delay_integration_flag*  
Status of onboard algorithm which applies a temporal average of successive lines in an IR image. When enabled, THEMIS TDI averages 16 detector rows to equal one line in an IR image.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - Disabled  
    - Description: temporal average of successive lines was disabled  
  - Enabled  
    - Description: temporal average of successive lines was enabled  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *uncorrected_sclk_start_count*  
The spacecraft clock value when the THEMIS instrument was commanded to acquire an observation. This can differ from the SPACECRAFT_CLOCK_START_COUNT (or the other START_TIME keywords) by as much as 4 seconds, depending on which bands are acquired in the observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
# Examples  
  
Example PDS4 label snippet from urn:nasa:pds:ody.themis.geo:data_visgeo:va3000009eqr::2.0:  
```
<Mission_Area>
  ...
  <ody:ODY_Parameters>
    <ody:THEMIS_Observation_Context>
      <ody:spacecraft_orientation_pitch unit="deg">0</ody:spacecraft_orientation_pitch>
      <ody:spacecraft_orientation_roll unit="deg">0</ody:spacecraft_orientation_roll>
      <ody:spacecraft_orientation_yaw unit="deg">0</ody:spacecraft_orientation_yaw>
      <ody:spacecraft_pointing_mode>NADIR</ody:spacecraft_pointing_mode>
    </ody:THEMIS_Observation_Context>
    <ody:THEMIS_Instrument_Attributes>
      <ody:detector_id>VIS</ody:detector_id>
      <ody:spatial_summing>4</ody:spatial_summing>
      <ody:interframe_delay unit="s">0.800</ody:interframe_delay>
      <ody:exposure_duration unit="ms">3.100</ody:exposure_duration>
    </ody:THEMIS_Instrument_Attributes>
    <ody:THEMIS_Image_Properties>
      <ody:image_id>9</ody:image_id>
      <ody:image_duration unit="s">65.600</ody:image_duration>
      <ody:focal_plane_temperature unit="K">-5.54</ody:focal_plane_temperature>
      <ody:uncorrected_sclk_start_count unit="s">1425541531.025</ody:uncorrected_sclk_start_count>
      <ody:image_description>No Description Given</ody:image_description>
    </ody:THEMIS_Image_Properties>
  </ody:ODY_Parameters>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:odyssey_grs_and:data_science_averaged:and_13_090_105::1.0:  
```
<Mission_Area>
  <ody:ODY_Parameters>
    <ody:GRS_Observation_Information>
      <ody:release_number>94</ody:release_number>
      <ody:product_type>AVERAGED_NEUTRON_DATA</ody:product_type>
      <ody:product_version_id>1.0</ody:product_version_id>
      <ody:mission_phase_name>EXTENDED MISSION</ody:mission_phase_name>
      <ody:start_solar_longitude unit="deg">090</ody:start_solar_longitude>
      <ody:stop_solar_longitude unit="deg">105</ody:stop_solar_longitude>
      <ody:spacecraft_clock_start>366856032361</ody:spacecraft_clock_start>
      <ody:spacecraft_clock_stop>367608058563</ody:spacecraft_clock_stop>
    </ody:GRS_Observation_Information>
  </ody:ODY_Parameters>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:ody.themis.sdp:browse_sdp:ia4000002bws::1.0:  
```
<Mission_Area>
  ...
  <ody:ODY_Parameters>
    <ody:THEMIS_Observation_Context>
      <ody:spacecraft_orientation_pitch unit="deg">0</ody:spacecraft_orientation_pitch>
      <ody:spacecraft_orientation_roll unit="deg">0</ody:spacecraft_orientation_roll>
      <ody:spacecraft_orientation_yaw unit="deg">0</ody:spacecraft_orientation_yaw>
      <ody:spacecraft_pointing_mode>NADIR</ody:spacecraft_pointing_mode>
    </ody:THEMIS_Observation_Context>
    <ody:THEMIS_Instrument_Attributes>
      <ody:detector_id>IR</ody:detector_id>
      <ody:command_sequence_number>104000</ody:command_sequence_number>
      <ody:spatial_summing>1</ody:spatial_summing>
      <ody:gain_number>16</ody:gain_number>
      <ody:offset_number>4</ody:offset_number>
      <ody:time_delay_integration_flag>Enabled</ody:time_delay_integration_flag>
    </ody:THEMIS_Instrument_Attributes>
    <ody:THEMIS_Image_Properties>
      <ody:image_id>2</ody:image_id>
      <ody:image_duration unit="s">120.000</ody:image_duration>
      <ody:missing_scan_lines>12031</ody:missing_scan_lines>
      <ody:uncorrected_sclk_start_count unit="s">1432655021.204</ody:uncorrected_sclk_start_count>
      <ody:image_description>No Description Given</ody:image_description>
    </ody:THEMIS_Image_Properties>
  </ody:ODY_Parameters>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:odyssey_grs_sgs:data_science_derived:sgs_04_270_285_00::1.0:  
```
<Mission_Area>
  <ody:ODY_Parameters>
    <ody:GRS_Observation_Information>
      <ody:release_number>0030</ody:release_number>
      <ody:product_type>SUMMED_GAMMA_SPECTRA</ody:product_type>
      <ody:product_version_id>1.0</ody:product_version_id>
      <ody:mission_phase_name>EXTENDED MISSION</ody:mission_phase_name>
      <ody:center_latitude unit="deg">87.5</ody:center_latitude>
      <ody:start_solar_longitude unit="deg">270</ody:start_solar_longitude>
      <ody:stop_solar_longitude unit="deg">285</ody:stop_solar_longitude>
      <ody:spacecraft_clock_start>237420828581</ody:spacecraft_clock_start>
      <ody:spacecraft_clock_stop>237499179581</ody:spacecraft_clock_stop>
    </ody:GRS_Observation_Information>
  </ody:ODY_Parameters>
</Mission_Area>
```  
  
# Edit History  
*See also: [ODY change log](https://github.com/pds-data-dictionaries/ldd-ody/blob/main/CHANGELOG.md).*  
2026-01-20  Jennifer Ward