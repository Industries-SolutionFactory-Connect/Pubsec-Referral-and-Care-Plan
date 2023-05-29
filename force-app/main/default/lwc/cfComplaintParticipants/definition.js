let definition =
      {"states":[{"fields":[],"conditions":{"id":"state-condition-object","isParent":true,"group":[]},"name":"BlankState","isSmartAction":false,"smartAction":{},"styleObject":{"padding":[{"type":"around","size":"x-small"}],"margin":[{"type":"around","size":"none"}],"container":{"class":"slds-card"},"size":{"isResponsive":false,"default":"12"},"sizeClass":"slds-size_12-of-12","class":"slds-card slds-p-around_x-small slds-m-bottom_x-small"},"blankCardState":true,"components":{"layer-0":{"children":[{"name":"Field","element":"outputField","size":{"isResponsive":false,"default":"12"},"stateIndex":0,"class":"slds-col ","property":{"placeholder":"","record":"{record}","type":"text","card":"{card}","label":"No Complaint Participants found for the Public Complaint","styles":{"label":{"textAlign":"center"}}},"type":"element","styleObject":{"sizeClass":"slds-size_12-of-12","padding":[],"margin":[],"background":{"color":"","image":"","size":"","repeat":"","position":""},"size":{"isResponsive":false,"default":"12"},"container":{"class":""},"border":{"type":"","width":"","color":"","radius":"","style":""},"elementStyleProperties":{"styles":{"label":{"textAlign":"center"}}},"text":{"align":"","color":""},"inlineStyle":""},"elementLabel":"Field-0","styleObjects":[{"key":0,"conditions":"default","styleObject":{"sizeClass":"slds-size_12-of-12","padding":[],"margin":[],"background":{"color":"","image":"","size":"","repeat":"","position":""},"size":{"isResponsive":false,"default":"12"},"container":{"class":""},"border":{"type":"","width":"","color":"","radius":"","style":""},"elementStyleProperties":{"styles":{"label":{"textAlign":"center"}}},"text":{"align":"","color":""},"inlineStyle":""},"label":"Default","name":"Default","conditionString":"","draggable":false}]}]}},"childCards":[],"actions":[],"omniscripts":[],"documents":[]},{"fields":[],"conditions":{"id":"state-condition-object","isParent":true,"group":[]},"name":"ListState","isSmartAction":false,"smartAction":{},"styleObject":{"padding":[{"type":"around","size":"x-small"}],"margin":[{"type":"around","size":"none"}],"container":{"class":"slds-card"},"size":{"isResponsive":false,"default":"12"},"sizeClass":"slds-size_12-of-12","class":"slds-card slds-p-around_x-small slds-m-bottom_x-small"},"blankCardState":false,"components":{"layer-0":{"children":[{"name":"Custom LWC","element":"customLwc","size":{"isResponsive":false,"default":"12"},"stateIndex":1,"class":"slds-col ","property":{"recordList":"{records}","customlwcname":"displayComplaintParticipants"},"type":"element","styleObject":{"sizeClass":"slds-size_12-of-12"},"elementLabel":"Custom LWC-0"}]}},"childCards":[],"actions":[],"omniscripts":[],"documents":[]}],"dataSource":{"type":"Query","value":{"dsDelay":"","query":"SELECT Id, participantid, role, status, TYPEOF participant WHEN Account THEN name WHEN Contact THEN name END FROM ComplaintParticipant WHERE PublicComplaintId='{recordId}'","jsonMap":"{\"recordId\":\"{recordId}\"}","resultVar":""},"orderBy":{"name":"","isReverse":""},"contextVariables":[]},"title":"ComplaintParticipants","enableLwc":true,"isFlex":true,"theme":"slds","selectableMode":"Multi","osSupport":true,"multilanguageSupport":false,"isRepeatable":false,"events":[{"eventname":"pc_participants_selection_changed","channelname":"rowSelection","element":"action","eventtype":"pubsub","recordIndex":"0","actionList":[{"key":"1646659659307-27948l81e","label":"Action","draggable":false,"isOpen":true,"card":"{card}","stateAction":{"id":"flex-action-1646660180360","type":"updateOmniScript","displayName":"Action","vlocityIcon":"standard-default","openUrlIn":"Current Window","elementId":"selectedComplaintParticipants","hasExtraParams":true,"extraParams":{"selectedComplaintParticipants":"{action.selectedData}"}},"actionIndex":0}],"showSpinner":"false","key":"event-0","displayLabel":"rowSelection:pc_participants_selection_changed","eventLabel":"pubsub"}],"Id":"0ko9A0000008OI5QAM","OmniUiCardKey":"ComplaintParticipants/SFDC/1.0","OmniUiCardType":"Parent"};
  export default definition