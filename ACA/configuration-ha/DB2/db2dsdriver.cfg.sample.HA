<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<configuration>
  <dsncollection>
     <dsn alias="YOUR_BASE_DB" host="YOUR_PRIMARY_DB_SERVER" name="YOUR_BASE_DB" port="YOUR_PRIMARY_DB_PORT">
     </dsn>
     <dsn alias="YOUR_TENANT_DB" host="YOUR_PRIMARY_DB_SERVER" name="YOUR_TENANT_DB" port="YOUR_PRIMARY_DB_PORT">
     </dsn>
  </dsncollection>
  <databases>
     <database name="YOUR_BASE_DB" host="YOUR_PRIMARY_DB_SERVER" port="YOUR_PRIMARY_DB_PORT">
        <parameter name="KeepAliveTimeout" value="20"/>
        <parameter name="ConnectionTimeout" value="10"/>
        <parameter name="MemberConnectTimeout" value="1"/>
        <acr>
         <parameter name="enableACR" value="true"/>
         <parameter name="enableSeamlessACR" value="true"/>
         <parameter name="acrRetryInterval" value="2"/>
         <parameter name="maxAcrRetries" value="30"/>
         <parameter name="affinityFailbackInterval" value="2"/>
         <parameter name="enableAlternateServerListFirstConnect" value="true"/>
         <alternateserverlist>
           <server hostname="YOUR_STANDBY_DB_SERVER" name="server1" port="YOUR_STANDBY_DB_PORT"/>
         </alternateserverlist>
        </acr>
     </database>
     <database name="YOUR_TENANT_DB" host="YOUR_PRIMARY_DB_SERVER" port="YOUR_PRIMARY_DB_PORT">
        <parameter name="KeepAliveTimeout" value="20"/>
        <parameter name="ConnectionTimeout" value="10"/>
        <parameter name="MemberConnectTimeout" value="1"/>
        <acr>
         <parameter name="enableACR" value="true"/>
         <parameter name="enableSeamlessACR" value="true"/>
         <parameter name="acrRetryInterval" value="2"/>
         <parameter name="maxAcrRetries" value="30"/>
         <parameter name="affinityFailbackInterval" value="2"/>
         <parameter name="enableAlternateServerListFirstConnect" value="true"/>
         <alternateserverlist>
           <server hostname="YOUR_STANDBY_DB_SERVER" name="server1" port="YOUR_STANDBY_DB_PORT"/>
         </alternateserverlist>
        </acr>
     </database>
 </databases>
</configuration>