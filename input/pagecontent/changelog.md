
All significant changes to this FHIR implementation guide will be documented on this page.   

### Next version 
* [#49](https://github.com/hl7ch/ch-term/issues/49): Include VS Treatment Reason
* [#78](https://github.com/hl7ch/ch-term/issues/78): updates for typeCode


### v3.1.0 (2024-12-17) 
* [#76](https://github.com/hl7ch/ch-term/issues/76): updates for typeCode, classCode, formatCode and practiceSettingCode
* [#45](https://github.com/hl7ch/ch-term/issues/45): remove duplicated entries in ConceptMaps
* [#38](https://github.com/hl7ch/ch-term/issues/38): Monthly Check of CS/VS for Swissmedic Vaccines
* [#52](https://github.com/hl7ch/ch-term/issues/52): Translation CH VACD Swiss Recommendation Forecast Status
* [#54](https://github.com/hl7ch/ch-term/issues/54): 
   * CS/VS for CH AllergyIntolerance: change experimental from true to false and status from draft to active
   * ConceptMap for CH VACD: change status from draft to active 
* [#58](https://github.com/hl7ch/ch-term/issues/58): Update Vaccines CS/VS/CM with August/September 2024 vaccines
* [#59](https://github.com/hl7ch/ch-term/issues/59): Adapt translation in the vaccination VS/CS
* [#61](https://github.com/hl7ch/ch-term/issues/61): Remove wrong meta.source from all CH AllergyIntolerance ValueSets (they are not imported from Art-Decor)
* [#69](https://github.com/hl7ch/ch-term/issues/69): TargetDisease To VaccineCode Mapping (Patrick Tobler (CISTEC))
* [#70](https://github.com/hl7ch/ch-term/issues/70): Update dependencies: ihe.formatcode.fhir#1.3.0, hl7.terminology#6.1.0
* [#73](https://github.com/hl7ch/ch-term/issues/73): Fix Mapping link error in CM Snomed CT VaccineCode To SwissMedic VaccineCode
 

#### Open Issues
During the ballots 2024, the following comments came in, which will be taken into account in the further development of CH Term:

* [#41](https://github.com/hl7ch/ch-term/issues/41): Terminology for ServiceRequest Category

See also open issues on [GitHub](https://github.com/hl7ch/ch-term/issues).

### v3.0.0 (2024-05-15)
* [#23](https://github.com/hl7ch/ch-term/issues/23): Rename IG from CH EPR Term to CH EPR
   * Update section introduction on home
   * Change canonical URLs (ValueSets & ConceptMaps)
* [#24](https://github.com/hl7ch/ch-term/issues/24): Integration of terminology from CH Core and the following exchange formats:
   * [CH Core #274](https://github.com/hl7ch/ch-core/issues/274)
      * [#30](https://github.com/hl7ch/ch-term/issues/30): Add missing CS eCH-011 Religion
      * [#31](https://github.com/hl7ch/ch-term/issues/31): Replace OID
   * [CH EMED #256](https://github.com/hl7ch/ch-emed/issues/256)
   * [CH AllergyIntolerance #91](https://github.com/hl7ch/ch-allergyintolerance/issues/91)
   * [CH VACD #212](https://github.com/hl7ch/ch-vacd/issues/212)
   * [CH eTOC #82](https://github.com/hl7ch/ch-etoc/issues/82)
   * ServiceRequest Category (origin in CH LAB-Order and CH RAD-Order) (see [#39](https://github.com/hl7ch/ch-term/issues/39))
* Enabling fsh files as source
* [CH EMED #245](https://github.com/hl7ch/ch-emed/issues/245): Add EDQM Administration Method
* [CH EMED #253](https://github.com/hl7ch/ch-emed/issues/253): EDQM Standard Terms: change value for CodeSystem.content from 'complete' to 'fragment' because not all EDQM codes are included
* [CH EMED #252](https://github.com/hl7ch/ch-emed/issues/252): SCT code for {Piece} 'Piece' (UCUM)
* [CH EMED #250](https://github.com/hl7ch/ch-emed/issues/250): Add nmol 'nanomole' (UCUM) and 413568008 'Application - unit of product usage (qualifier value)' (SCT) to VS UnitCode
* [CH Core #116](https://github.com/hl7ch/ch-core/issues/116): Add CS/VS for main guarantor (Coverage.type)

### v2.0.10 (2023-12-19)
* Version 202306.1-stable
   * See [https://ehealthsuisse.art-decor.org/ch-epr-html-20230608T154548/project.html](https://ehealthsuisse.art-decor.org/ch-epr-html-20230608T154548/project.html)

### v2.0.9 (2023-06-27)
* Version 202306.1-stable
   * See [https://ehealthsuisse.art-decor.org/ch-epr-html-20230608T154548/project.html](https://ehealthsuisse.art-decor.org/ch-epr-html-20230608T154548/project.html)

### v2.0.8 (2022-12-21)
* 	Version 202212.0-stable
   * See [https://ehealthsuisse.art-decor.org/ch-epr-html-20221201T141037/project.html](https://ehealthsuisse.art-decor.org/ch-epr-html-20221201T141037/project.html)   

### v2.0.7 (2022-01-31)
* Version 202104.0-stable
   * See [http://ehealthsuisse.art-decor.org/ch-epr-html-20210416T020411/terminology.html](http://ehealthsuisse.art-decor.org/ch-epr-html-20210416T020411/terminology.html)
   * Minor update, depending on ihe.formatcode.fhir#1.0.0	

### v2.0.6 (2021-12-22)
* Version 202104.0-stable
   * See [http://ehealthsuisse.art-decor.org/ch-epr-html-20210416T020411/terminology.html](http://ehealthsuisse.art-decor.org/ch-epr-html-20210416T020411/terminology.html)
   * Minor update, see also [#6](https://github.com/hl7ch/ch-term/issues/6)	     

### v2.0.5 (2021-04-23)
* Version 202104.0-stable
   * See [http://ehealthsuisse.art-decor.org/ch-epr-html-20210416T020411/terminology.html](http://ehealthsuisse.art-decor.org/ch-epr-html-20210416T020411/terminology.html)    

### v2.0.4 (2020-06-22)
* Version 202004.1-stable
   * See [http://ehealthsuisse.art-decor.org/ch-epr-html-20200622T124207/project.html#_20200622124207](http://ehealthsuisse.art-decor.org/ch-epr-html-20200622T124207/project.html#_20200622124207)

### v2.0.3 (2020-04-23)
* Version 202004.0-stable
   * See [http://ehealthsuisse.art-decor.org/ch-epr-html-20200423T125505/project.html#_20200423125505](http://ehealthsuisse.art-decor.org/ch-epr-html-20200423T125505/project.html#_20200423125505)   

### v2.0.2 (2020-02-26)
* Version 201907.2-stable
   * See [http://ehealthsuisse.art-decor.org/ch-epr-html-20200226T180620/project.html#_20200226180620](http://ehealthsuisse.art-decor.org/ch-epr-html-20200226T180620/project.html#_20200226180620)  

### v2.0.1 (2019-11-11)
* EPR Annex 3 and 9, Version 201907.1-stable	
* Update to FHIR version 4.0.1

### v2.0.0 (2019-09-13)
* EPR Annex 3 and 9, Version 201907.0-stable	     
