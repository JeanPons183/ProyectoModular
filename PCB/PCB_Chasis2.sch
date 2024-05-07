<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA06-1" urn="urn:adsk.eagle:footprint:8287/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.62" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.985" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="5.715" y="1.651" size="1.27" layer="21" ratio="10">6</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
<package name="MA04-2" urn="urn:adsk.eagle:footprint:8328/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<text x="-4.318" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-5.08" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="3.81" y="2.921" size="1.27" layer="21" ratio="10">8</text>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
</package>
<package name="MA04-1" urn="urn:adsk.eagle:footprint:8285/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA06-1" urn="urn:adsk.eagle:package:8340/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA06-1"/>
</packageinstances>
</package3d>
<package3d name="MA04-2" urn="urn:adsk.eagle:package:8368/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA04-2"/>
</packageinstances>
</package3d>
<package3d name="MA04-1" urn="urn:adsk.eagle:package:8337/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA04-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA06-1" urn="urn:adsk.eagle:symbol:8286/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA04-2" urn="urn:adsk.eagle:symbol:8327/1" library_version="2">
<wire x1="3.81" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="MA04-1" urn="urn:adsk.eagle:symbol:8284/1" library_version="2">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA06-1" urn="urn:adsk.eagle:component:8378/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA06-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA06-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8340/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA04-2" urn="urn:adsk.eagle:component:8405/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA04-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8368/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="11" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA04-1" urn="urn:adsk.eagle:component:8375/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8337/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="41" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ESP32-DEVKITV1">
<packages>
<package name="ESP32-DEVKITV1">
<pad name="1" x="-22.87" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="2" x="-20.33" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="3" x="-17.79" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="4" x="-15.25" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="5" x="-12.71" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="6" x="-10.17" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="7" x="-7.63" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="8" x="-5.09" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="9" x="-2.55" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="10" x="-0.01" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="11" x="2.53" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="12" x="5.07" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="13" x="7.61" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="14" x="10.15" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="15" x="12.69" y="-13.54" drill="1" diameter="1.9304"/>
<pad name="30" x="-22.87" y="11.23" drill="1" diameter="1.9304"/>
<pad name="29" x="-20.33" y="11.23" drill="1" diameter="1.9304"/>
<pad name="28" x="-17.79" y="11.23" drill="1" diameter="1.9304"/>
<pad name="27" x="-15.25" y="11.23" drill="1" diameter="1.9304"/>
<pad name="26" x="-12.71" y="11.23" drill="1" diameter="1.9304"/>
<pad name="25" x="-10.17" y="11.23" drill="1" diameter="1.9304"/>
<pad name="24" x="-7.63" y="11.23" drill="1" diameter="1.9304"/>
<pad name="23" x="-5.09" y="11.23" drill="1" diameter="1.9304"/>
<pad name="22" x="-2.55" y="11.23" drill="1" diameter="1.9304"/>
<pad name="21" x="-0.01" y="11.23" drill="1" diameter="1.9304"/>
<pad name="20" x="2.53" y="11.23" drill="1" diameter="1.9304"/>
<pad name="19" x="5.07" y="11.23" drill="1" diameter="1.9304"/>
<pad name="18" x="7.61" y="11.23" drill="1" diameter="1.9304"/>
<pad name="17" x="10.15" y="11.23" drill="1" diameter="1.9304"/>
<pad name="16" x="12.69" y="11.23" drill="1" diameter="1.9304"/>
<text x="-22.21" y="-11.2" size="1.016" layer="21" rot="R90">3V3</text>
<text x="-19.67" y="-11.2" size="1.016" layer="21" rot="R90">GND</text>
<text x="-17.13" y="-11.2" size="1.016" layer="21" rot="R90">IO15</text>
<text x="-14.59" y="-11.2" size="1.016" layer="21" rot="R90">IO2</text>
<text x="-12.05" y="-11.2" size="1.016" layer="21" rot="R90">IO4</text>
<text x="-9.51" y="-11.2" size="1.016" layer="21" rot="R90">IO16</text>
<text x="-6.97" y="-11.2" size="1.016" layer="21" rot="R90">IO17</text>
<text x="-4.43" y="-11.2" size="1.016" layer="21" rot="R90">IO5</text>
<text x="-1.89" y="-11.2" size="1.016" layer="21" rot="R90">IO18</text>
<text x="0.65" y="-11.2" size="1.016" layer="21" rot="R90">IO19</text>
<text x="3.19" y="-11.2" size="1.016" layer="21" rot="R90">IO21</text>
<text x="5.73" y="-11.2" size="1.016" layer="21" rot="R90">IO3</text>
<text x="8.27" y="-11.2" size="1.016" layer="21" rot="R90">IO1</text>
<text x="10.81" y="-11.2" size="1.016" layer="21" rot="R90">IO22</text>
<text x="13.35" y="-11.2" size="1.016" layer="21" rot="R90">IO23</text>
<text x="-22.19" y="6.52" size="1.016" layer="21" rot="R90">VIN</text>
<text x="-19.65" y="6.52" size="1.016" layer="21" rot="R90">GND</text>
<text x="-17.11" y="6.52" size="1.016" layer="21" rot="R90">IO13</text>
<text x="-14.57" y="6.52" size="1.016" layer="21" rot="R90">IO12</text>
<text x="-12.03" y="6.52" size="1.016" layer="21" rot="R90">IO14</text>
<text x="-9.49" y="6.52" size="1.016" layer="21" rot="R90">IO27</text>
<text x="-6.95" y="6.52" size="1.016" layer="21" rot="R90">IO26</text>
<text x="-4.41" y="6.52" size="1.016" layer="21" rot="R90">IO25</text>
<text x="-1.87" y="6.52" size="1.016" layer="21" rot="R90">IO33</text>
<text x="0.67" y="6.52" size="1.016" layer="21" rot="R90">IO32</text>
<text x="3.21" y="6.52" size="1.016" layer="21" rot="R90">IO35</text>
<text x="5.75" y="6.52" size="1.016" layer="21" rot="R90">IO34</text>
<text x="8.29" y="6.52" size="1.016" layer="21" rot="R90">VN</text>
<text x="10.83" y="6.52" size="1.016" layer="21" rot="R90">VP</text>
<text x="13.37" y="6.52" size="1.016" layer="21" rot="R90">EN</text>
<text x="-4.93" y="-3.18" size="1.9304" layer="21">ESP32-Devkit V1</text>
<wire x1="-33" y1="12.7" x2="19" y2="12.7" width="0.254" layer="21"/>
<wire x1="19" y1="12.7" x2="19" y2="-15.2" width="0.254" layer="21"/>
<wire x1="19" y1="-15.2" x2="-33" y2="-15.2" width="0.254" layer="21"/>
<wire x1="-33" y1="-15.2" x2="-33" y2="12.7" width="0.254" layer="21"/>
<text x="-24.13" y="13.97" size="1.27" layer="21">&gt;NAME</text>
<text x="5" y="-17.24" size="1.27" layer="27">ESP32-DEVKITV1</text>
</package>
</packages>
<symbols>
<symbol name="ESP32-DEVKITV1">
<wire x1="-25.4" y1="-12.7" x2="-25.4" y2="12.7" width="0.254" layer="94"/>
<wire x1="-25.4" y1="12.7" x2="16" y2="12.7" width="0.254" layer="94"/>
<wire x1="16" y1="12.7" x2="16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="16" y1="-12.7" x2="-25.4" y2="-12.7" width="0.254" layer="94"/>
<pin name="3V3" x="-22.86" y="-17.78" length="middle" rot="R90"/>
<pin name="GND" x="-20.32" y="-17.78" length="middle" rot="R90"/>
<pin name="IO15" x="-17.78" y="-17.78" length="middle" rot="R90"/>
<pin name="IO2" x="-15.24" y="-17.78" length="middle" rot="R90"/>
<pin name="IO4" x="-12.7" y="-17.78" length="middle" rot="R90"/>
<pin name="IO16" x="-10.16" y="-17.78" length="middle" rot="R90"/>
<pin name="IO17" x="-7.62" y="-17.78" length="middle" rot="R90"/>
<pin name="IO5" x="-5.08" y="-17.78" length="middle" rot="R90"/>
<pin name="IO18" x="-2.54" y="-17.78" length="middle" rot="R90"/>
<pin name="IO19" x="0" y="-17.78" length="middle" rot="R90"/>
<pin name="IO21" x="2.54" y="-17.78" length="middle" rot="R90"/>
<pin name="IO3" x="5.08" y="-17.78" length="middle" rot="R90"/>
<pin name="IO1" x="7.62" y="-17.78" length="middle" rot="R90"/>
<pin name="IO22" x="10.16" y="-17.78" length="middle" rot="R90"/>
<pin name="IO23" x="12.7" y="-17.78" length="middle" rot="R90"/>
<pin name="EN" x="12.7" y="17.78" length="middle" rot="R270"/>
<pin name="VP" x="10.16" y="17.78" length="middle" rot="R270"/>
<pin name="VN" x="7.62" y="17.78" length="middle" rot="R270"/>
<pin name="IO34" x="5.08" y="17.78" length="middle" rot="R270"/>
<pin name="IO35" x="2.54" y="17.78" length="middle" rot="R270"/>
<pin name="IO32" x="0" y="17.78" length="middle" rot="R270"/>
<pin name="IO33" x="-2.54" y="17.78" length="middle" rot="R270"/>
<pin name="IO25" x="-5.08" y="17.78" length="middle" rot="R270"/>
<pin name="IO26" x="-7.62" y="17.78" length="middle" rot="R270"/>
<pin name="IO27" x="-10.16" y="17.78" length="middle" rot="R270"/>
<pin name="IO14" x="-12.7" y="17.78" length="middle" rot="R270"/>
<pin name="IO12" x="-15.24" y="17.78" length="middle" rot="R270"/>
<pin name="IO13" x="-17.78" y="17.78" length="middle" rot="R270"/>
<pin name="GND1" x="-20.32" y="17.78" length="middle" rot="R270"/>
<pin name="VIN" x="-22.86" y="17.78" length="middle" rot="R270"/>
<text x="-26.67" y="5.08" size="1.27" layer="95" rot="R90">&gt;NAME</text>
<text x="18.4" y="-12.7" size="1.27" layer="96" rot="R90">ESP32-DEVKITV1</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32DEVKITV1">
<gates>
<gate name="G$1" symbol="ESP32-DEVKITV1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP32-DEVKITV1">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="EN" pad="16"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="GND1" pad="28"/>
<connect gate="G$1" pin="IO1" pad="13"/>
<connect gate="G$1" pin="IO12" pad="27"/>
<connect gate="G$1" pin="IO13" pad="28"/>
<connect gate="G$1" pin="IO14" pad="26"/>
<connect gate="G$1" pin="IO15" pad="3"/>
<connect gate="G$1" pin="IO16" pad="6"/>
<connect gate="G$1" pin="IO17" pad="7"/>
<connect gate="G$1" pin="IO18" pad="9"/>
<connect gate="G$1" pin="IO19" pad="10"/>
<connect gate="G$1" pin="IO2" pad="4"/>
<connect gate="G$1" pin="IO21" pad="11"/>
<connect gate="G$1" pin="IO22" pad="14"/>
<connect gate="G$1" pin="IO23" pad="15"/>
<connect gate="G$1" pin="IO25" pad="23"/>
<connect gate="G$1" pin="IO26" pad="24"/>
<connect gate="G$1" pin="IO27" pad="24"/>
<connect gate="G$1" pin="IO3" pad="12"/>
<connect gate="G$1" pin="IO32" pad="21"/>
<connect gate="G$1" pin="IO33" pad="22"/>
<connect gate="G$1" pin="IO34" pad="19"/>
<connect gate="G$1" pin="IO35" pad="20"/>
<connect gate="G$1" pin="IO4" pad="5"/>
<connect gate="G$1" pin="IO5" pad="8"/>
<connect gate="G$1" pin="VIN" pad="30"/>
<connect gate="G$1" pin="VN" pad="18"/>
<connect gate="G$1" pin="VP" pad="17"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RASPBERRY_PI_3_MODEL_B_">
<packages>
<package name="MODULE_RASPBERRY_PI_3_MODEL_B+">
<wire x1="-42.5" y1="25" x2="-42.5" y2="-25" width="0.127" layer="21"/>
<wire x1="-42.5" y1="-25" x2="-39.5" y2="-28" width="0.127" layer="21" curve="90"/>
<wire x1="-39.5" y1="-28" x2="39.5" y2="-28" width="0.127" layer="21"/>
<wire x1="39.5" y1="-28" x2="42.5" y2="-25" width="0.127" layer="21" curve="90"/>
<wire x1="42.5" y1="-25" x2="42.5" y2="25" width="0.127" layer="21"/>
<wire x1="42.5" y1="25" x2="39.5" y2="28" width="0.127" layer="21" curve="90"/>
<wire x1="39.5" y1="28" x2="-39.5" y2="28" width="0.127" layer="21"/>
<wire x1="-39.5" y1="28" x2="-42.5" y2="25" width="0.127" layer="21" curve="90"/>
<text x="-42.75" y="-31.77" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="23.5" y1="-25.5" x2="45" y2="-25.5" width="0.127" layer="51" style="shortdash"/>
<wire x1="45" y1="-25.5" x2="45" y2="25.5" width="0.127" layer="51" style="shortdash"/>
<wire x1="45" y1="25.5" x2="23.5" y2="25.5" width="0.127" layer="51" style="shortdash"/>
<wire x1="23.5" y1="25.5" x2="23.5" y2="-25.5" width="0.127" layer="51" style="shortdash"/>
<text x="-42.75" y="29" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<wire x1="-42.75" y1="-30.255" x2="-42.75" y2="28.25" width="0.05" layer="39"/>
<wire x1="-42.75" y1="28.25" x2="45.25" y2="28.25" width="0.05" layer="39"/>
<wire x1="45.25" y1="28.25" x2="45.25" y2="-30.255" width="0.05" layer="39"/>
<wire x1="45.25" y1="-30.255" x2="-42.75" y2="-30.255" width="0.05" layer="39"/>
<circle x="-43.4" y="23" radius="0.2" width="0.4" layer="21"/>
<circle x="-43.4" y="23" radius="0.2" width="0.4" layer="51"/>
<wire x1="-42.5" y1="25" x2="-42.5" y2="-25" width="0.127" layer="51"/>
<wire x1="-42.5" y1="-25" x2="-39.5" y2="-28" width="0.127" layer="51" curve="90"/>
<wire x1="-39.5" y1="-28" x2="39.5" y2="-28" width="0.127" layer="51"/>
<wire x1="39.5" y1="-28" x2="42.5" y2="-25" width="0.127" layer="51" curve="90"/>
<wire x1="42.5" y1="-25" x2="42.5" y2="25" width="0.127" layer="51"/>
<wire x1="42.5" y1="25" x2="39.5" y2="28" width="0.127" layer="51" curve="90"/>
<wire x1="39.5" y1="28" x2="-39.5" y2="28" width="0.127" layer="51"/>
<wire x1="-39.5" y1="28" x2="-42.5" y2="25" width="0.127" layer="51" curve="90"/>
<pad name="S4" x="-39" y="-24.5" drill="2.75" diameter="6.2"/>
<pad name="S3" x="19" y="-24.5" drill="2.75" diameter="6.2"/>
<pad name="S2" x="19" y="24.5" drill="2.75" diameter="6.2"/>
<pad name="S1" x="-39" y="24.5" drill="2.75" diameter="6.2"/>
<pad name="1" x="-34.13" y="23.23" drill="1.016" shape="square"/>
<pad name="3" x="-31.59" y="23.23" drill="1.016"/>
<pad name="5" x="-29.05" y="23.23" drill="1.016"/>
<pad name="7" x="-26.51" y="23.23" drill="1.016"/>
<pad name="9" x="-23.97" y="23.23" drill="1.016"/>
<pad name="11" x="-21.43" y="23.23" drill="1.016"/>
<pad name="2" x="-34.13" y="25.77" drill="1.016"/>
<pad name="4" x="-31.59" y="25.77" drill="1.016"/>
<pad name="6" x="-29.05" y="25.77" drill="1.016"/>
<pad name="8" x="-26.51" y="25.77" drill="1.016"/>
<pad name="10" x="-23.97" y="25.77" drill="1.016"/>
<pad name="12" x="-21.43" y="25.77" drill="1.016"/>
<pad name="13" x="-18.89" y="23.23" drill="1.016"/>
<pad name="14" x="-18.89" y="25.77" drill="1.016"/>
<pad name="15" x="-16.35" y="23.23" drill="1.016"/>
<pad name="17" x="-13.81" y="23.23" drill="1.016"/>
<pad name="19" x="-11.27" y="23.23" drill="1.016"/>
<pad name="21" x="-8.73" y="23.23" drill="1.016"/>
<pad name="23" x="-6.19" y="23.23" drill="1.016"/>
<pad name="25" x="-3.65" y="23.23" drill="1.016"/>
<pad name="16" x="-16.35" y="25.77" drill="1.016"/>
<pad name="18" x="-13.81" y="25.77" drill="1.016"/>
<pad name="20" x="-11.27" y="25.77" drill="1.016"/>
<pad name="22" x="-8.73" y="25.77" drill="1.016"/>
<pad name="24" x="-6.19" y="25.77" drill="1.016"/>
<pad name="26" x="-3.65" y="25.77" drill="1.016"/>
<pad name="27" x="-1.11" y="23.23" drill="1.016"/>
<pad name="28" x="-1.11" y="25.77" drill="1.016"/>
<pad name="29" x="1.43" y="23.23" drill="1.016"/>
<pad name="31" x="3.97" y="23.23" drill="1.016"/>
<pad name="33" x="6.51" y="23.23" drill="1.016"/>
<pad name="35" x="9.05" y="23.23" drill="1.016"/>
<pad name="37" x="11.59" y="23.23" drill="1.016"/>
<pad name="39" x="14.13" y="23.23" drill="1.016"/>
<pad name="30" x="1.43" y="25.77" drill="1.016"/>
<pad name="32" x="3.97" y="25.77" drill="1.016"/>
<pad name="34" x="6.51" y="25.77" drill="1.016"/>
<pad name="36" x="9.05" y="25.77" drill="1.016"/>
<pad name="38" x="11.59" y="25.77" drill="1.016"/>
<pad name="40" x="14.13" y="25.77" drill="1.016"/>
<pad name="43" x="17.69" y="17.107" drill="1.016"/>
<pad name="41" x="20.23" y="17.107" drill="1.016"/>
<pad name="44" x="17.69" y="19.647" drill="1.016"/>
<pad name="42" x="20.23" y="19.647" drill="1.016"/>
</package>
</packages>
<symbols>
<symbol name="RASPBERRY_PI_3_MODEL_B+">
<wire x1="-20.32" y1="33.02" x2="20.32" y2="33.02" width="0.254" layer="94"/>
<wire x1="20.32" y1="33.02" x2="20.32" y2="-30.48" width="0.254" layer="94"/>
<wire x1="20.32" y1="-30.48" x2="-20.32" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-30.48" x2="-20.32" y2="33.02" width="0.254" layer="94"/>
<text x="-20.32" y="33.528" size="2.54" layer="95">&gt;NAME</text>
<text x="-20.32" y="-33.02" size="2.54" layer="96">&gt;VALUE</text>
<pin name="5V" x="25.4" y="30.48" length="middle" direction="pwr" rot="R180"/>
<pin name="3V3" x="25.4" y="27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="GPIO2/SDA1" x="-25.4" y="25.4" length="middle"/>
<pin name="GPIO3/SCL1" x="-25.4" y="22.86" length="middle"/>
<pin name="GPIO4/GPIO_GCKL" x="-25.4" y="20.32" length="middle"/>
<pin name="GPIO14/TXD0" x="25.4" y="20.32" length="middle" rot="R180"/>
<pin name="GND" x="25.4" y="-27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="GPIO15/RXD0" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="GPIO17/GPIO_GEN0" x="-25.4" y="15.24" length="middle"/>
<pin name="GPIO18/GPIO_GEN1" x="-25.4" y="10.16" length="middle"/>
<pin name="GPIO27/GPIO_GEN2" x="-25.4" y="12.7" length="middle"/>
<pin name="GPIO22/GPIO_GEN3" x="-25.4" y="7.62" length="middle"/>
<pin name="GPIO23/GPIO_GEN4" x="-25.4" y="5.08" length="middle"/>
<pin name="GPIO24/GPIO_GEN5" x="-25.4" y="2.54" length="middle"/>
<pin name="GPIO10/SPI_MOSI" x="-25.4" y="-12.7" length="middle"/>
<pin name="GPIO9/SPI_MISO" x="-25.4" y="-15.24" length="middle"/>
<pin name="GPIO25/GPIO_GEN6" x="-25.4" y="0" length="middle"/>
<pin name="GPIO11/SPI_SCLK" x="-25.4" y="-10.16" length="middle"/>
<pin name="GPIO8/!SPI_CE0!" x="-25.4" y="-5.08" length="middle"/>
<pin name="GPIO7/!SPI_CE1!" x="-25.4" y="-7.62" length="middle"/>
<pin name="ID_SD" x="-25.4" y="-20.32" length="middle"/>
<pin name="ID_SC" x="-25.4" y="-22.86" length="middle"/>
<pin name="GPIO5" x="25.4" y="12.7" length="middle" rot="R180"/>
<pin name="GPIO6" x="25.4" y="10.16" length="middle" rot="R180"/>
<pin name="GPIO12" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="GPIO13" x="25.4" y="5.08" length="middle" rot="R180"/>
<pin name="GPIO19" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="GPIO16" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="GPIO26" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="GPIO20" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="GPIO21" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="SHIELD" x="25.4" y="-25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="TR02" x="25.4" y="-17.78" length="middle" rot="R180"/>
<pin name="TR01" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="TR00" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="TR03" x="25.4" y="-20.32" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RASPBERRY_PI_3_MODEL_B+" prefix="U">
<description> &lt;a href="https://pricing.snapeda.com/parts/RASPBERRY%20PI%203%20MODEL%20B%2B/Raspberry%20Pi/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RASPBERRY_PI_3_MODEL_B+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_RASPBERRY_PI_3_MODEL_B+">
<connects>
<connect gate="G$1" pin="3V3" pad="1 17"/>
<connect gate="G$1" pin="5V" pad="2 4"/>
<connect gate="G$1" pin="GND" pad="6 9 14 20 25 30 34 39"/>
<connect gate="G$1" pin="GPIO10/SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="GPIO11/SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO14/TXD0" pad="8"/>
<connect gate="G$1" pin="GPIO15/RXD0" pad="10"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17/GPIO_GEN0" pad="11"/>
<connect gate="G$1" pin="GPIO18/GPIO_GEN1" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO2/SDA1" pad="3"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22/GPIO_GEN3" pad="15"/>
<connect gate="G$1" pin="GPIO23/GPIO_GEN4" pad="16"/>
<connect gate="G$1" pin="GPIO24/GPIO_GEN5" pad="18"/>
<connect gate="G$1" pin="GPIO25/GPIO_GEN6" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27/GPIO_GEN2" pad="13"/>
<connect gate="G$1" pin="GPIO3/SCL1" pad="5"/>
<connect gate="G$1" pin="GPIO4/GPIO_GCKL" pad="7"/>
<connect gate="G$1" pin="GPIO5" pad="29"/>
<connect gate="G$1" pin="GPIO6" pad="31"/>
<connect gate="G$1" pin="GPIO7/!SPI_CE1!" pad="26"/>
<connect gate="G$1" pin="GPIO8/!SPI_CE0!" pad="24"/>
<connect gate="G$1" pin="GPIO9/SPI_MISO" pad="21"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="SHIELD" pad="S1 S2 S3 S4"/>
<connect gate="G$1" pin="TR00" pad="42"/>
<connect gate="G$1" pin="TR01" pad="41"/>
<connect gate="G$1" pin="TR02" pad="44"/>
<connect gate="G$1" pin="TR03" pad="43"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Not in stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/RASPBERRY%20PI%203%20MODEL%20B+/Raspberry+Pi/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value=" Single Board Computer, Model B+ 1GB RAM,Raspberry Pi 3 Series | Raspberry Pi RASPBERRY PI 3 MODEL B+ "/>
<attribute name="MF" value="Raspberry Pi"/>
<attribute name="MP" value="RASPBERRY PI 3 MODEL B+"/>
<attribute name="PACKAGE" value=" Raspberry Pi"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/RASPBERRY%20PI%203%20MODEL%20B+/Raspberry+Pi/view-part/?ref=snap"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led" urn="urn:adsk.eagle:library:259">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="LZR184" urn="urn:adsk.eagle:footprint:15646/1" library_version="5">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
4 LEDs, Siemens</description>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.921" x2="-1.27" y2="4.699" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.921" x2="1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.921" x2="-1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.381" x2="1.27" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.27" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-4.699" x2="-1.27" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-3.81" x2="0" y2="-2.921" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="-3.81" x2="0" y2="-3.302" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-4.318" x2="0.508" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-4.699" x2="0.889" y2="-3.81" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="-3.0661" x2="0" y2="-2.667" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="-2.667" x2="0.8678" y2="-3.0661" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-4.5539" x2="0" y2="-4.953" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-4.953" x2="0.8678" y2="-4.5539" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="-3.0661" x2="1.1429" y2="-3.81" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="0.8678" y1="-4.5539" x2="1.1431" y2="-3.81" width="0.1524" layer="51" curve="40.602281"/>
<wire x1="-1.143" y1="-3.81" x2="-0.8678" y2="-3.0661" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="-3.81" x2="-0.8677" y2="-4.5539" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="1.27" y1="-4.699" x2="1.27" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-2.159" x2="1.27" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="1.27" y1="5.08" x2="-1.27" y2="5.08" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.27" x2="0" y2="-0.381" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="-1.27" x2="0" y2="-0.762" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.778" x2="0.508" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-2.159" x2="0.889" y2="-1.27" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="-0.5261" x2="0" y2="-0.127" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="-0.127" x2="0.8678" y2="-0.5261" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-2.0139" x2="0" y2="-2.413" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-2.413" x2="0.8678" y2="-2.0139" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="-0.5261" x2="1.1429" y2="-1.27" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="0.8678" y1="-2.0139" x2="1.1431" y2="-1.27" width="0.1524" layer="51" curve="40.602281"/>
<wire x1="-1.143" y1="-1.27" x2="-0.8678" y2="-0.5261" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="-1.27" x2="-0.8677" y2="-2.0139" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="-0.889" y1="1.27" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="1.27" x2="0" y2="1.778" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="0.762" x2="0.508" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="0.381" x2="0.889" y2="1.27" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="2.0139" x2="0" y2="2.413" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="2.413" x2="0.8678" y2="2.0139" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="0.5261" x2="0" y2="0.127" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="0.127" x2="0.8678" y2="0.5261" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="2.0139" x2="1.1431" y2="1.27" width="0.1524" layer="51" curve="-40.602281"/>
<wire x1="0.8678" y1="0.5261" x2="1.1429" y2="1.27" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="-1.143" y1="1.27" x2="-0.8677" y2="2.0139" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="-1.143" y1="1.27" x2="-0.8678" y2="0.5261" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="1.27" y1="0.381" x2="1.27" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="4.699" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.921" x2="1.27" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="3.81" x2="0" y2="4.699" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="3.81" x2="0" y2="4.318" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="3.302" x2="0.508" y2="3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="2.921" x2="0.889" y2="3.81" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="4.5539" x2="0" y2="4.953" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="4.953" x2="0.8678" y2="4.5539" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="3.0661" x2="0" y2="2.667" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="2.667" x2="0.8678" y2="3.0661" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="4.5539" x2="1.1431" y2="3.81" width="0.1524" layer="51" curve="-40.602281"/>
<wire x1="0.8678" y1="3.0661" x2="1.1429" y2="3.81" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="-1.143" y1="3.81" x2="-0.8677" y2="4.5539" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="-1.143" y1="3.81" x2="-0.8678" y2="3.0661" width="0.1524" layer="51" curve="40.604135"/>
<pad name="A1" x="-1.27" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="K1" x="1.27" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="A2" x="-1.27" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="K2" x="1.27" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A3" x="-1.27" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="K3" x="1.27" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="A4" x="-1.27" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="K4" x="1.27" y="-3.81" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="5.2832" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="3.1242" y="-4.445" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-3.175" y="3.175" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.302" y="0.635" size="1.27" layer="21" ratio="10">2</text>
<text x="-3.302" y="-1.905" size="1.27" layer="21" ratio="10">3</text>
<text x="-3.302" y="-4.445" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="1.27" y1="2.921" x2="1.524" y2="4.064" layer="51"/>
<rectangle x1="-1.524" y1="3.556" x2="-1.27" y2="4.064" layer="51"/>
<rectangle x1="1.27" y1="0.381" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.27" y2="1.524" layer="51"/>
<rectangle x1="1.27" y1="-2.159" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.27" y2="-1.016" layer="51"/>
<rectangle x1="1.27" y1="-4.699" x2="1.524" y2="-3.556" layer="51"/>
<rectangle x1="-1.524" y1="-4.064" x2="-1.27" y2="-3.556" layer="51"/>
</package>
<package name="LZR182" urn="urn:adsk.eagle:footprint:15644/1" library_version="5">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
2 LEDs, Siemens</description>
<wire x1="1.27" y1="2.54" x2="1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="1.27" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.381" x2="1.27" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.381" x2="1.27" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.27" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.27" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="1.27" x2="0" y2="1.778" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="0.762" x2="0.508" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="0.381" x2="0.889" y2="1.27" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="2.0139" x2="0" y2="2.413" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="2.413" x2="0.8678" y2="2.0139" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="0.5261" x2="0" y2="0.127" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="0.127" x2="0.8678" y2="0.5261" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="2.0139" x2="1.1431" y2="1.27" width="0.1524" layer="51" curve="-40.602281"/>
<wire x1="0.8678" y1="0.5261" x2="1.1429" y2="1.27" width="0.1524" layer="51" curve="40.60599"/>
<wire x1="-1.143" y1="1.27" x2="-0.8677" y2="2.0139" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="-1.143" y1="1.27" x2="-0.8678" y2="0.5261" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-0.889" y1="-1.27" x2="0" y2="-0.381" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="-1.27" x2="0" y2="-0.762" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.778" x2="0.508" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-2.159" x2="0.889" y2="-1.27" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="-0.5261" x2="0" y2="-0.127" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="-0.127" x2="0.8678" y2="-0.5261" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-2.0139" x2="0" y2="-2.413" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-2.413" x2="0.8678" y2="-2.0139" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="-0.5261" x2="1.1429" y2="-1.27" width="0.1524" layer="51" curve="-40.60599"/>
<wire x1="0.8678" y1="-2.0139" x2="1.1431" y2="-1.27" width="0.1524" layer="51" curve="40.602281"/>
<wire x1="-1.143" y1="-1.27" x2="-0.8678" y2="-0.5261" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="-1.27" x2="-0.8677" y2="-2.0139" width="0.1524" layer="51" curve="40.60599"/>
<pad name="A1" x="-1.27" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="K1" x="1.27" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A2" x="-1.27" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="K2" x="1.27" y="-1.27" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="2.7432" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="3.1242" y="-2.794" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-3.175" y="0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.302" y="-1.905" size="1.27" layer="21" ratio="10">2</text>
<rectangle x1="1.27" y1="0.381" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.27" y2="1.524" layer="51"/>
<rectangle x1="1.27" y1="-2.159" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.27" y2="-1.016" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="LZR184" urn="urn:adsk.eagle:package:15790/1" type="box" library_version="5">
<description>LED BLOCK
4 LEDs, Siemens</description>
<packageinstances>
<packageinstance name="LZR184"/>
</packageinstances>
</package3d>
<package3d name="LZR182" urn="urn:adsk.eagle:package:15802/1" type="box" library_version="5">
<description>LED BLOCK
2 LEDs, Siemens</description>
<packageinstances>
<packageinstance name="LZR182"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LED" urn="urn:adsk.eagle:symbol:15639/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LZR184" urn="urn:adsk.eagle:component:15898/3" prefix="DZ" library_version="5">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
4 LEDs, Siemens</description>
<gates>
<gate name="-1" symbol="LED" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="LED" x="10.16" y="0" addlevel="always"/>
<gate name="-3" symbol="LED" x="20.32" y="0" addlevel="always"/>
<gate name="-4" symbol="LED" x="30.48" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="LZR184">
<connects>
<connect gate="-1" pin="A" pad="A1"/>
<connect gate="-1" pin="C" pad="K1"/>
<connect gate="-2" pin="A" pad="A2"/>
<connect gate="-2" pin="C" pad="K2"/>
<connect gate="-3" pin="A" pad="A3"/>
<connect gate="-3" pin="C" pad="K3"/>
<connect gate="-4" pin="A" pad="A4"/>
<connect gate="-4" pin="C" pad="K4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15790/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LZR182" urn="urn:adsk.eagle:component:15905/3" prefix="DZ" library_version="5">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
2 LEDs, Siemens</description>
<gates>
<gate name="-1" symbol="LED" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="LED" x="12.7" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="LZR182">
<connects>
<connect gate="-1" pin="A" pad="A1"/>
<connect gate="-1" pin="C" pad="K1"/>
<connect gate="-2" pin="A" pad="A2"/>
<connect gate="-2" pin="C" pad="K2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15802/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-ptr500" urn="urn:adsk.eagle:library:181">
<description>&lt;b&gt;PTR Connectors&lt;/b&gt;&lt;p&gt;
Aug. 2004 / PTR Meßtechnik:&lt;br&gt;
Die Bezeichnung der Serie AK505 wurde geändert.&lt;br&gt;
Es handelt sich hierbei um AK500 in horizontaler Ausführung.&lt;p&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Alte Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Neue Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2DS,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2DS-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AKZ505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AKZ500/2-5.08-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TABLE&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="AK500/2-H" urn="urn:adsk.eagle:footprint:9865/1" library_version="3">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
Aug. 2004 / PTR Meßtechnik:&lt;br&gt;
Die Bezeichnung der Serie AK505 wurde geändert.&lt;br&gt;
Es handelt sich hierbei um AK500 in horizontaler Ausführung.</description>
<wire x1="-5.08" y1="-7.239" x2="-5.08" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.794" x2="-5.08" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-7.239" x2="-4.318" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.794" x2="5.08" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.429" x2="5.08" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.429" x2="-5.08" y2="2.794" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.429" x2="5.08" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.794" x2="5.461" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-3.429" x2="5.08" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.794" x2="5.08" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="2.159" x2="-0.4826" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-2.794" x2="-0.4826" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-2.794" x2="-4.5466" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="2.159" x2="-4.5466" y2="2.159" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="2.159" x2="0.4826" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="-2.794" x2="4.5466" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="-2.794" x2="4.5466" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="2.159" x2="0.4826" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.8006" y1="-3.048" x2="0.2286" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="4.8006" y1="-3.048" x2="4.8006" y2="2.413" width="0.0508" layer="21"/>
<wire x1="0.2286" y1="2.413" x2="4.8006" y2="2.413" width="0.0508" layer="21"/>
<wire x1="0.2286" y1="2.413" x2="0.2286" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-0.2286" y1="2.413" x2="-0.2286" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-4.8006" y1="2.413" x2="-0.2286" y2="2.413" width="0.0508" layer="21"/>
<wire x1="-4.8006" y1="2.413" x2="-4.8006" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-0.2286" y1="-3.048" x2="-4.8006" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-4.5466" y1="0" x2="-0.4826" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.5466" y1="-2.413" x2="-4.2926" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.7366" y1="-2.667" x2="-0.4826" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.7366" y1="-2.667" x2="-4.2926" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-1.3716" y1="-2.413" x2="-1.1176" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.9116" y1="-2.667" x2="-3.6576" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.6576" y1="-0.127" x2="-3.6576" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-0.127" x2="-1.3716" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-0.127" x2="-1.3716" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-0.762" x2="-1.3716" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-0.762" x2="-3.6576" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-1.3716" y1="-0.762" x2="-1.3716" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.81" x2="-5.08" y2="-3.81" width="0.0508" layer="21"/>
<wire x1="-5.08" y1="-3.81" x2="-5.08" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="0" x2="4.5466" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="1.3716" y1="-0.127" x2="3.6576" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-0.127" x2="1.3716" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-0.762" x2="3.6576" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-0.762" x2="1.3716" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="3.6576" y1="-0.762" x2="3.6576" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="3.6576" y1="-0.127" x2="3.6576" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-2.667" x2="1.3716" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="3.6576" y1="-2.413" x2="3.9116" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="4.2926" y1="-2.667" x2="0.7366" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="4.2926" y1="-2.667" x2="4.5466" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="0.4826" y1="-2.413" x2="0.7366" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.762" y1="-7.366" x2="-0.762" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-7.239" x2="0.762" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-7.366" x2="-4.318" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-7.239" x2="-2.794" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-7.366" x2="-2.794" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-7.239" x2="-2.794" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-7.239" x2="-2.286" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-7.239" x2="-0.762" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-7.366" x2="-2.286" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-7.366" x2="-0.762" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-7.239" x2="2.286" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-7.239" x2="2.794" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-7.366" x2="2.286" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-7.366" x2="2.794" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-7.239" x2="4.318" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-7.366" x2="4.318" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-7.366" x2="4.318" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-7.239" x2="5.08" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-7.366" x2="0.762" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-7.239" x2="2.286" y2="-7.239" width="0.1524" layer="21"/>
<circle x="-2.5146" y="0" radius="1.397" width="0.1524" layer="51"/>
<circle x="2.5146" y="0" radius="1.397" width="0.1524" layer="51"/>
<pad name="1" x="-2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-5.08" y="3.556" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.175" y="-5.715" size="1.27" layer="21" ratio="10">1</text>
<text x="1.905" y="-5.715" size="1.27" layer="21" ratio="10">2</text>
<rectangle x1="-3.6576" y1="-1.524" x2="-1.3716" y2="-0.762" layer="51"/>
<rectangle x1="1.3716" y1="-1.524" x2="3.6576" y2="-0.762" layer="51"/>
<rectangle x1="-3.6576" y1="-2.667" x2="-1.3716" y2="-1.524" layer="21"/>
<rectangle x1="1.3716" y1="-2.667" x2="3.6576" y2="-1.524" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="AK500/2-H" urn="urn:adsk.eagle:package:9901/1" type="box" library_version="3">
<description>CONNECTOR
Aug. 2004 / PTR Meßtechnik:
Die Bezeichnung der Serie AK505 wurde geändert.
Es handelt sich hierbei um AK500 in horizontaler Ausführung.</description>
<packageinstances>
<packageinstance name="AK500/2-H"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KL" urn="urn:adsk.eagle:symbol:9788/2" library_version="3">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KLV" urn="urn:adsk.eagle:symbol:9842/1" library_version="3">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-3.81" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AK500/2-H" urn="urn:adsk.eagle:component:9938/3" prefix="X" uservalue="yes" library_version="3">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
Aug. 2004 / PTR Meßtechnik:&lt;br&gt;
Die Bezeichnung der Serie AK505 wurde geändert.&lt;br&gt;
Es handelt sich hierbei um AK500 in horizontaler Ausführung.</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KLV" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK500/2-H">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9901/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="MOTOR_1" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA06-1" device="" package3d_urn="urn:adsk.eagle:package:8340/1"/>
<part name="MOTOR_2" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA06-1" device="" package3d_urn="urn:adsk.eagle:package:8340/1"/>
<part name="IBT_1_PWM" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-2" device="" package3d_urn="urn:adsk.eagle:package:8368/1"/>
<part name="IBT_2_PWM" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-2" device="" package3d_urn="urn:adsk.eagle:package:8368/1"/>
<part name="IBT_1_POWER" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-1" device="" package3d_urn="urn:adsk.eagle:package:8337/1"/>
<part name="IBT_2_POWER" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-1" device="" package3d_urn="urn:adsk.eagle:package:8337/1"/>
<part name="ESP32-DEVKITV1" library="ESP32-DEVKITV1" deviceset="ESP32DEVKITV1" device="" value=""/>
<part name="RASPBERRY_PI_3_MODEL_B+" library="RASPBERRY_PI_3_MODEL_B_" deviceset="RASPBERRY_PI_3_MODEL_B+" device="" value=""/>
<part name="FRONT" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LZR184" device="" package3d_urn="urn:adsk.eagle:package:15790/1" value="Led"/>
<part name="BACK" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LZR182" device="" package3d_urn="urn:adsk.eagle:package:15802/1" value="Led"/>
<part name="POWER" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK500/2-H" device="" package3d_urn="urn:adsk.eagle:package:9901/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="MOTOR_1" gate="1" x="73.66" y="33.02" smashed="yes">
<attribute name="VALUE" x="72.39" y="20.32" size="1.778" layer="96"/>
<attribute name="NAME" x="72.39" y="41.402" size="1.778" layer="95"/>
</instance>
<instance part="MOTOR_2" gate="1" x="73.66" y="10.16" smashed="yes">
<attribute name="VALUE" x="72.39" y="-2.54" size="1.778" layer="96"/>
<attribute name="NAME" x="72.39" y="18.542" size="1.778" layer="95"/>
</instance>
<instance part="IBT_1_PWM" gate="G$1" x="48.26" y="17.78" smashed="yes" rot="R180">
<attribute name="VALUE" x="52.07" y="27.94" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="52.07" y="11.938" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="IBT_2_PWM" gate="G$1" x="48.26" y="0" smashed="yes" rot="R180">
<attribute name="VALUE" x="52.07" y="10.16" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="52.07" y="-5.842" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="IBT_1_POWER" gate="1" x="73.66" y="76.2" smashed="yes">
<attribute name="VALUE" x="72.39" y="66.04" size="1.778" layer="96"/>
<attribute name="NAME" x="72.39" y="82.042" size="1.778" layer="95"/>
</instance>
<instance part="IBT_2_POWER" gate="1" x="73.66" y="55.88" smashed="yes">
<attribute name="VALUE" x="72.39" y="45.72" size="1.778" layer="96"/>
<attribute name="NAME" x="72.39" y="61.722" size="1.778" layer="95"/>
</instance>
<instance part="ESP32-DEVKITV1" gate="G$1" x="48.26" y="60.96" smashed="yes" rot="R90">
<attribute name="NAME" x="43.18" y="34.29" size="1.27" layer="95" rot="R180"/>
</instance>
<instance part="RASPBERRY_PI_3_MODEL_B+" gate="G$1" x="154.94" y="5.08" smashed="yes">
<attribute name="NAME" x="134.62" y="38.608" size="2.54" layer="95"/>
<attribute name="VALUE" x="134.62" y="-27.94" size="2.54" layer="96"/>
</instance>
<instance part="FRONT" gate="-1" x="124.46" y="99.06" smashed="yes">
<attribute name="NAME" x="128.016" y="94.488" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="130.175" y="94.488" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="FRONT" gate="-2" x="134.62" y="99.06" smashed="yes">
<attribute name="NAME" x="138.176" y="94.488" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="140.335" y="94.488" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="FRONT" gate="-3" x="144.78" y="99.06" smashed="yes">
<attribute name="NAME" x="148.336" y="94.488" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="150.495" y="94.488" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="FRONT" gate="-4" x="154.94" y="99.06" smashed="yes">
<attribute name="NAME" x="158.496" y="94.488" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="160.655" y="94.488" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="BACK" gate="-1" x="172.72" y="99.06" smashed="yes">
<attribute name="NAME" x="176.276" y="94.488" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="178.435" y="94.488" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="BACK" gate="-2" x="185.42" y="99.06" smashed="yes">
<attribute name="NAME" x="188.976" y="94.488" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="191.135" y="94.488" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="POWER" gate="-1" x="66.04" y="101.6" smashed="yes">
<attribute name="NAME" x="64.77" y="102.489" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="POWER" gate="-2" x="66.04" y="96.52" smashed="yes">
<attribute name="NAME" x="64.77" y="97.409" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="62.23" y="92.837" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="BACK" gate="-2" pin="A"/>
<wire x1="185.42" y1="101.6" x2="185.42" y2="106.68" width="0.1524" layer="91"/>
<pinref part="POWER" gate="-1" pin="KL"/>
<wire x1="185.42" y1="106.68" x2="172.72" y2="106.68" width="0.1524" layer="91"/>
<wire x1="172.72" y1="106.68" x2="154.94" y2="106.68" width="0.1524" layer="91"/>
<wire x1="154.94" y1="106.68" x2="144.78" y2="106.68" width="0.1524" layer="91"/>
<wire x1="144.78" y1="106.68" x2="134.62" y2="106.68" width="0.1524" layer="91"/>
<wire x1="134.62" y1="106.68" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<wire x1="124.46" y1="106.68" x2="96.52" y2="106.68" width="0.1524" layer="91"/>
<wire x1="96.52" y1="106.68" x2="71.12" y2="106.68" width="0.1524" layer="91"/>
<wire x1="71.12" y1="106.68" x2="71.12" y2="101.6" width="0.1524" layer="91"/>
<pinref part="BACK" gate="-1" pin="A"/>
<wire x1="172.72" y1="101.6" x2="172.72" y2="106.68" width="0.1524" layer="91"/>
<junction x="172.72" y="106.68"/>
<pinref part="FRONT" gate="-4" pin="A"/>
<wire x1="154.94" y1="101.6" x2="154.94" y2="106.68" width="0.1524" layer="91"/>
<junction x="154.94" y="106.68"/>
<pinref part="FRONT" gate="-3" pin="A"/>
<wire x1="144.78" y1="101.6" x2="144.78" y2="106.68" width="0.1524" layer="91"/>
<junction x="144.78" y="106.68"/>
<pinref part="FRONT" gate="-2" pin="A"/>
<wire x1="134.62" y1="101.6" x2="134.62" y2="106.68" width="0.1524" layer="91"/>
<junction x="134.62" y="106.68"/>
<pinref part="FRONT" gate="-1" pin="A"/>
<wire x1="124.46" y1="101.6" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<junction x="124.46" y="106.68"/>
<pinref part="IBT_1_POWER" gate="1" pin="3"/>
<wire x1="81.28" y1="76.2" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
<wire x1="96.52" y1="76.2" x2="96.52" y2="106.68" width="0.1524" layer="91"/>
<junction x="96.52" y="106.68"/>
<pinref part="IBT_2_POWER" gate="1" pin="3"/>
<wire x1="81.28" y1="55.88" x2="96.52" y2="55.88" width="0.1524" layer="91"/>
<wire x1="96.52" y1="55.88" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
<junction x="96.52" y="76.2"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="POWER" gate="-2" pin="KL"/>
<wire x1="71.12" y1="96.52" x2="71.12" y2="91.44" width="0.1524" layer="91"/>
<wire x1="71.12" y1="91.44" x2="91.44" y2="91.44" width="0.1524" layer="91"/>
<pinref part="BACK" gate="-2" pin="C"/>
<wire x1="91.44" y1="91.44" x2="124.46" y2="91.44" width="0.1524" layer="91"/>
<wire x1="124.46" y1="91.44" x2="134.62" y2="91.44" width="0.1524" layer="91"/>
<wire x1="134.62" y1="91.44" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<wire x1="144.78" y1="91.44" x2="154.94" y2="91.44" width="0.1524" layer="91"/>
<wire x1="154.94" y1="91.44" x2="172.72" y2="91.44" width="0.1524" layer="91"/>
<wire x1="172.72" y1="91.44" x2="185.42" y2="91.44" width="0.1524" layer="91"/>
<wire x1="185.42" y1="91.44" x2="185.42" y2="93.98" width="0.1524" layer="91"/>
<pinref part="BACK" gate="-1" pin="C"/>
<wire x1="172.72" y1="93.98" x2="172.72" y2="91.44" width="0.1524" layer="91"/>
<junction x="172.72" y="91.44"/>
<pinref part="FRONT" gate="-4" pin="C"/>
<wire x1="154.94" y1="93.98" x2="154.94" y2="91.44" width="0.1524" layer="91"/>
<junction x="154.94" y="91.44"/>
<pinref part="FRONT" gate="-3" pin="C"/>
<wire x1="144.78" y1="93.98" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<junction x="144.78" y="91.44"/>
<pinref part="FRONT" gate="-2" pin="C"/>
<wire x1="134.62" y1="93.98" x2="134.62" y2="91.44" width="0.1524" layer="91"/>
<junction x="134.62" y="91.44"/>
<pinref part="FRONT" gate="-1" pin="C"/>
<wire x1="124.46" y1="93.98" x2="124.46" y2="91.44" width="0.1524" layer="91"/>
<junction x="124.46" y="91.44"/>
<pinref part="IBT_1_POWER" gate="1" pin="4"/>
<wire x1="81.28" y1="78.74" x2="91.44" y2="78.74" width="0.1524" layer="91"/>
<wire x1="91.44" y1="78.74" x2="91.44" y2="91.44" width="0.1524" layer="91"/>
<junction x="91.44" y="91.44"/>
<pinref part="IBT_2_POWER" gate="1" pin="4"/>
<wire x1="81.28" y1="58.42" x2="91.44" y2="58.42" width="0.1524" layer="91"/>
<wire x1="91.44" y1="58.42" x2="91.44" y2="78.74" width="0.1524" layer="91"/>
<junction x="91.44" y="78.74"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IBT_1_POWER" gate="1" pin="2"/>
<wire x1="81.28" y1="73.66" x2="99.06" y2="73.66" width="0.1524" layer="91"/>
<wire x1="99.06" y1="73.66" x2="99.06" y2="38.1" width="0.1524" layer="91"/>
<pinref part="MOTOR_1" gate="1" pin="6"/>
<wire x1="99.06" y1="38.1" x2="81.28" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IBT_1_POWER" gate="1" pin="1"/>
<wire x1="81.28" y1="71.12" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
<pinref part="MOTOR_1" gate="1" pin="5"/>
<wire x1="101.6" y1="71.12" x2="101.6" y2="35.56" width="0.1524" layer="91"/>
<wire x1="101.6" y1="35.56" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IBT_2_POWER" gate="1" pin="2"/>
<wire x1="81.28" y1="53.34" x2="96.52" y2="53.34" width="0.1524" layer="91"/>
<pinref part="MOTOR_2" gate="1" pin="6"/>
<wire x1="96.52" y1="53.34" x2="96.52" y2="15.24" width="0.1524" layer="91"/>
<wire x1="96.52" y1="15.24" x2="81.28" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IBT_2_POWER" gate="1" pin="1"/>
<wire x1="81.28" y1="50.8" x2="93.98" y2="50.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="50.8" x2="93.98" y2="12.7" width="0.1524" layer="91"/>
<pinref part="MOTOR_2" gate="1" pin="5"/>
<wire x1="93.98" y1="12.7" x2="81.28" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="MOTOR_2" gate="1" pin="3"/>
<wire x1="81.28" y1="7.62" x2="119.38" y2="7.62" width="0.1524" layer="91"/>
<wire x1="119.38" y1="7.62" x2="119.38" y2="20.32" width="0.1524" layer="91"/>
<wire x1="119.38" y1="20.32" x2="119.38" y2="30.48" width="0.1524" layer="91"/>
<wire x1="119.38" y1="30.48" x2="119.38" y2="45.72" width="0.1524" layer="91"/>
<wire x1="119.38" y1="45.72" x2="190.5" y2="45.72" width="0.1524" layer="91"/>
<wire x1="190.5" y1="45.72" x2="190.5" y2="35.56" width="0.1524" layer="91"/>
<pinref part="RASPBERRY_PI_3_MODEL_B+" gate="G$1" pin="5V"/>
<wire x1="190.5" y1="35.56" x2="180.34" y2="35.56" width="0.1524" layer="91"/>
<pinref part="MOTOR_1" gate="1" pin="3"/>
<wire x1="81.28" y1="30.48" x2="119.38" y2="30.48" width="0.1524" layer="91"/>
<junction x="119.38" y="30.48"/>
<pinref part="IBT_1_PWM" gate="G$1" pin="2"/>
<wire x1="55.88" y1="22.86" x2="71.12" y2="22.86" width="0.1524" layer="91"/>
<wire x1="71.12" y1="22.86" x2="71.12" y2="20.32" width="0.1524" layer="91"/>
<wire x1="71.12" y1="20.32" x2="119.38" y2="20.32" width="0.1524" layer="91"/>
<junction x="119.38" y="20.32"/>
<pinref part="IBT_2_PWM" gate="G$1" pin="2"/>
<wire x1="55.88" y1="5.08" x2="71.12" y2="5.08" width="0.1524" layer="91"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="20.32" width="0.1524" layer="91"/>
<junction x="71.12" y="20.32"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="MOTOR_1" gate="1" pin="2"/>
<wire x1="81.28" y1="27.94" x2="127" y2="27.94" width="0.1524" layer="91"/>
<wire x1="127" y1="27.94" x2="127" y2="20.32" width="0.1524" layer="91"/>
<pinref part="RASPBERRY_PI_3_MODEL_B+" gate="G$1" pin="GPIO17/GPIO_GEN0"/>
<wire x1="127" y1="20.32" x2="129.54" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="MOTOR_1" gate="1" pin="1"/>
<wire x1="81.28" y1="25.4" x2="124.46" y2="25.4" width="0.1524" layer="91"/>
<pinref part="RASPBERRY_PI_3_MODEL_B+" gate="G$1" pin="GPIO27/GPIO_GEN2"/>
<wire x1="124.46" y1="25.4" x2="124.46" y2="17.78" width="0.1524" layer="91"/>
<wire x1="124.46" y1="17.78" x2="129.54" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IBT_1_PWM" gate="G$1" pin="1"/>
<wire x1="40.64" y1="22.86" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="22.86" x2="35.56" y2="5.08" width="0.1524" layer="91"/>
<wire x1="35.56" y1="5.08" x2="35.56" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-33.02" x2="193.04" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="MOTOR_1" gate="1" pin="4"/>
<wire x1="81.28" y1="33.02" x2="116.84" y2="33.02" width="0.1524" layer="91"/>
<wire x1="116.84" y1="33.02" x2="116.84" y2="48.26" width="0.1524" layer="91"/>
<wire x1="116.84" y1="48.26" x2="193.04" y2="48.26" width="0.1524" layer="91"/>
<pinref part="MOTOR_2" gate="1" pin="4"/>
<wire x1="81.28" y1="10.16" x2="116.84" y2="10.16" width="0.1524" layer="91"/>
<wire x1="116.84" y1="10.16" x2="116.84" y2="33.02" width="0.1524" layer="91"/>
<junction x="116.84" y="33.02"/>
<wire x1="193.04" y1="48.26" x2="193.04" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="RASPBERRY_PI_3_MODEL_B+" gate="G$1" pin="GND"/>
<wire x1="193.04" y1="-22.86" x2="180.34" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-33.02" x2="193.04" y2="-22.86" width="0.1524" layer="91"/>
<junction x="193.04" y="-22.86"/>
<pinref part="IBT_2_PWM" gate="G$1" pin="1"/>
<wire x1="40.64" y1="5.08" x2="35.56" y2="5.08" width="0.1524" layer="91"/>
<junction x="35.56" y="5.08"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IBT_2_PWM" gate="G$1" pin="5"/>
<wire x1="40.64" y1="0" x2="30.48" y2="0" width="0.1524" layer="91"/>
<pinref part="IBT_1_PWM" gate="G$1" pin="5"/>
<wire x1="30.48" y1="0" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
<wire x1="30.48" y1="7.62" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
<wire x1="30.48" y1="17.78" x2="40.64" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IBT_1_PWM" gate="G$1" pin="6"/>
<wire x1="55.88" y1="17.78" x2="60.96" y2="17.78" width="0.1524" layer="91"/>
<wire x1="60.96" y1="17.78" x2="60.96" y2="7.62" width="0.1524" layer="91"/>
<wire x1="60.96" y1="7.62" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
<junction x="30.48" y="7.62"/>
<pinref part="IBT_2_PWM" gate="G$1" pin="6"/>
<wire x1="55.88" y1="0" x2="60.96" y2="0" width="0.1524" layer="91"/>
<wire x1="60.96" y1="0" x2="60.96" y2="7.62" width="0.1524" layer="91"/>
<junction x="60.96" y="7.62"/>
<pinref part="ESP32-DEVKITV1" gate="G$1" pin="IO34"/>
<wire x1="30.48" y1="66.04" x2="22.86" y2="66.04" width="0.1524" layer="91"/>
<wire x1="22.86" y1="66.04" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
<wire x1="22.86" y1="7.62" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IBT_1_PWM" gate="G$1" pin="8"/>
<wire x1="55.88" y1="15.24" x2="58.42" y2="15.24" width="0.1524" layer="91"/>
<wire x1="58.42" y1="15.24" x2="58.42" y2="30.48" width="0.1524" layer="91"/>
<wire x1="58.42" y1="30.48" x2="20.32" y2="30.48" width="0.1524" layer="91"/>
<wire x1="20.32" y1="30.48" x2="20.32" y2="63.5" width="0.1524" layer="91"/>
<pinref part="ESP32-DEVKITV1" gate="G$1" pin="IO35"/>
<wire x1="20.32" y1="63.5" x2="30.48" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IBT_1_PWM" gate="G$1" pin="7"/>
<wire x1="40.64" y1="15.24" x2="17.78" y2="15.24" width="0.1524" layer="91"/>
<wire x1="17.78" y1="15.24" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<pinref part="ESP32-DEVKITV1" gate="G$1" pin="IO32"/>
<wire x1="17.78" y1="60.96" x2="30.48" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IBT_2_PWM" gate="G$1" pin="7"/>
<wire x1="40.64" y1="-2.54" x2="12.7" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-2.54" x2="12.7" y2="58.42" width="0.1524" layer="91"/>
<pinref part="ESP32-DEVKITV1" gate="G$1" pin="IO33"/>
<wire x1="12.7" y1="58.42" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IBT_2_PWM" gate="G$1" pin="8"/>
<wire x1="55.88" y1="-2.54" x2="60.96" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-2.54" x2="60.96" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-10.16" x2="15.24" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="ESP32-DEVKITV1" gate="G$1" pin="IO25"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="55.88" width="0.1524" layer="91"/>
<wire x1="15.24" y1="55.88" x2="30.48" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="MOTOR_2" gate="1" pin="1"/>
<wire x1="81.28" y1="2.54" x2="119.38" y2="2.54" width="0.1524" layer="91"/>
<wire x1="119.38" y1="2.54" x2="119.38" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-30.48" x2="198.12" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="RASPBERRY_PI_3_MODEL_B+" gate="G$1" pin="GPIO5"/>
<wire x1="198.12" y1="-30.48" x2="198.12" y2="17.78" width="0.1524" layer="91"/>
<wire x1="198.12" y1="17.78" x2="180.34" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="MOTOR_2" gate="1" pin="2"/>
<wire x1="81.28" y1="5.08" x2="124.46" y2="5.08" width="0.1524" layer="91"/>
<wire x1="124.46" y1="5.08" x2="124.46" y2="12.7" width="0.1524" layer="91"/>
<pinref part="RASPBERRY_PI_3_MODEL_B+" gate="G$1" pin="GPIO22/GPIO_GEN3"/>
<wire x1="124.46" y1="12.7" x2="129.54" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
