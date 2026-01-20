<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:ody  Version:1.0.3.0 - Tue Jan 20 17:54:07 UTC 2026 -->
  <!-- Generated from the PDS4 Information Model Version 1.20.0.0 - System Build 13.1 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/ody/v1" prefix="ody"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="ody:GRS_Observation_Information/ody:center_latitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>ody:GRS_Observation_Information/ody:center_latitude/ody:center_latitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:GRS_Observation_Information/ody:mission_phase_name">
      <sch:assert test=". = ('AEROBRAKING', 'CRUISE', 'EXTENDED MISSION', 'MAPPING', 'ORBIT INSERTION')">
        <title>ody:GRS_Observation_Information/ody:mission_phase_name/ody:mission_phase_name</title>
        The attribute ody:GRS_Observation_Information/ody:mission_phase_name must be equal to one of the following values 'AEROBRAKING', 'CRUISE', 'EXTENDED MISSION', 'MAPPING', 'ORBIT INSERTION'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:GRS_Observation_Information/ody:product_type">
      <sch:assert test=". = ('AVERAGED_HEND_DATA', 'AVERAGED_NEUTRON_DATA', 'CDR', 'CHAN_DATA', 'COMMAND_LIST', 'CORRECTED_GAMMA_SPECTRA', 'DDR', 'DERIVED_HEND_DATA', 'DERIVED_NEUTRON_DATA', 'EDR', 'ENG_DATA', 'E_KERNEL', 'GAMMA_SPECTRA', 'GRS_SPECIAL', 'HEND_SPECTRA', 'MESSAGE_LOG', 'NEUTRON_SPECTRA', 'PROFILE_DATA', 'PULSER_SPECTRA', 'RDR', 'SUMMED_GAMMA_SPECTRA')">
        <title>ody:GRS_Observation_Information/ody:product_type/ody:product_type</title>
        The attribute ody:GRS_Observation_Information/ody:product_type must be equal to one of the following values 'AVERAGED_HEND_DATA', 'AVERAGED_NEUTRON_DATA', 'CDR', 'CHAN_DATA', 'COMMAND_LIST', 'CORRECTED_GAMMA_SPECTRA', 'DDR', 'DERIVED_HEND_DATA', 'DERIVED_NEUTRON_DATA', 'EDR', 'ENG_DATA', 'E_KERNEL', 'GAMMA_SPECTRA', 'GRS_SPECIAL', 'HEND_SPECTRA', 'MESSAGE_LOG', 'NEUTRON_SPECTRA', 'PROFILE_DATA', 'PULSER_SPECTRA', 'RDR', 'SUMMED_GAMMA_SPECTRA'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:GRS_Observation_Information/ody:start_solar_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>ody:GRS_Observation_Information/ody:start_solar_longitude/ody:start_solar_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:GRS_Observation_Information/ody:stop_solar_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>ody:GRS_Observation_Information/ody:stop_solar_longitude/ody:stop_solar_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:ODY_Parameters/ody:product_type">
      <sch:assert test=". = ('AVERAGED_HEND_DATA', 'AVERAGED_NEUTRON_DATA', 'CDR', 'CHAN_DATA', 'COMMAND_LIST', 'CORRECTED_GAMMA_SPECTRA', 'DDR', 'DERIVED_HEND_DATA', 'DERIVED_NEUTRON_DATA', 'EDR', 'ENG_DATA', 'E_KERNEL', 'GAMMA_SPECTRA', 'GRS_SPECIAL', 'HEND_SPECTRA', 'MESSAGE_LOG', 'NEUTRON_SPECTRA', 'PROFILE_DATA', 'PULSER_SPECTRA', 'RDR', 'SUMMED_GAMMA_SPECTRA')">
        <title>ody:ODY_Parameters/ody:product_type/ody:product_type</title>
        The attribute ody:ODY_Parameters/ody:product_type must be equal to one of the following values 'AVERAGED_HEND_DATA', 'AVERAGED_NEUTRON_DATA', 'CDR', 'CHAN_DATA', 'COMMAND_LIST', 'CORRECTED_GAMMA_SPECTRA', 'DDR', 'DERIVED_HEND_DATA', 'DERIVED_NEUTRON_DATA', 'EDR', 'ENG_DATA', 'E_KERNEL', 'GAMMA_SPECTRA', 'GRS_SPECIAL', 'HEND_SPECTRA', 'MESSAGE_LOG', 'NEUTRON_SPECTRA', 'PROFILE_DATA', 'PULSER_SPECTRA', 'RDR', 'SUMMED_GAMMA_SPECTRA'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Image_Properties/ody:focal_plane_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>ody:THEMIS_Image_Properties/ody:focal_plane_temperature/ody:focal_plane_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Image_Properties/ody:image_duration">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>ody:THEMIS_Image_Properties/ody:image_duration/ody:image_duration</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Image_Properties/ody:maximum_brightness_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>ody:THEMIS_Image_Properties/ody:maximum_brightness_temperature/ody:maximum_brightness_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Image_Properties/ody:minimum_brightness_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>ody:THEMIS_Image_Properties/ody:minimum_brightness_temperature/ody:minimum_brightness_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Image_Properties/ody:uncorrected_sclk_start_count">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>ody:THEMIS_Image_Properties/ody:uncorrected_sclk_start_count/ody:uncorrected_sclk_start_count</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Instrument_Attributes/ody:detector_id">
      <sch:assert test=". = ('IR', 'VIS')">
        <title>ody:THEMIS_Instrument_Attributes/ody:detector_id/ody:detector_id</title>
        The attribute ody:THEMIS_Instrument_Attributes/ody:detector_id must be equal to one of the following values 'IR', 'VIS'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Instrument_Attributes/ody:exposure_duration">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>ody:THEMIS_Instrument_Attributes/ody:exposure_duration/ody:exposure_duration</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Instrument_Attributes/ody:interframe_delay">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>ody:THEMIS_Instrument_Attributes/ody:interframe_delay/ody:interframe_delay</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Instrument_Attributes/ody:rice_flag">
      <sch:assert test=". = ('Disabled', 'Enabled')">
        <title>ody:THEMIS_Instrument_Attributes/ody:rice_flag/ody:rice_flag</title>
        The attribute ody:THEMIS_Instrument_Attributes/ody:rice_flag must be equal to one of the following values 'Disabled', 'Enabled'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Instrument_Attributes/ody:time_delay_integration_flag">
      <sch:assert test=". = ('Disabled', 'Enabled')">
        <title>ody:THEMIS_Instrument_Attributes/ody:time_delay_integration_flag/ody:time_delay_integration_flag</title>
        The attribute ody:THEMIS_Instrument_Attributes/ody:time_delay_integration_flag must be equal to one of the following values 'Disabled', 'Enabled'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Observation_Context/ody:spacecraft_orientation_pitch">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>ody:THEMIS_Observation_Context/ody:spacecraft_orientation_pitch/ody:spacecraft_orientation_pitch</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Observation_Context/ody:spacecraft_orientation_roll">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>ody:THEMIS_Observation_Context/ody:spacecraft_orientation_roll/ody:spacecraft_orientation_roll</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ody:THEMIS_Observation_Context/ody:spacecraft_orientation_yaw">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad')">
        <title>ody:THEMIS_Observation_Context/ody:spacecraft_orientation_yaw/ody:spacecraft_orientation_yaw</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'microrad', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
