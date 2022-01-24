use fcl_db;
DROP TEMPORARY TABLE IF EXISTS grdb_sessionHeader_FOB_;
CREATE TEMPORARY TABLE grdb_sessionHeader_FOB_(
                iHeaderID INT NOT NULL AUTO_INCREMENT,
                iFreightOnBoardID int NOT NULL DEFAULT '0',
                cQuotingMember varchar(20) NOT NULL DEFAULT '',
                cCustomeralias varchar(20) NOT NULL DEFAULT '',
                cScaccode varchar(20) NOT NULL DEFAULT '',
                cOriginRegioncode varchar(20) NOT NULL DEFAULT '',
                cOriginCFSUncode varchar(20) NOT NULL DEFAULT '',
                cOriginConsoleCFSUncode varchar(20) NOT NULL DEFAULT '',
                cOriginPortUncode varchar(20) NOT NULL DEFAULT '',
                cTransshipment_1 varchar(20) NOT NULL DEFAULT '',
                cTransshipment_2 varchar(20) NOT NULL DEFAULT '',
                cTransshipment_3 varchar(20) NOT NULL DEFAULT '',
                cDestinationRegioncode varchar(20) NOT NULL DEFAULT '',
                cDestinationPortUncode varchar(20) NOT NULL DEFAULT '',
                cDestinationDeconsoleCFSUncode varchar(20) NOT NULL DEFAULT '',
                cDestinationCFSUncode varchar(20) NOT NULL DEFAULT '',
                cQuotingregion varchar(20) NOT NULL DEFAULT '',
                cOriginUncode varchar(10) NOT NULL DEFAULT '',
                cDestinationUncode varchar(10) NOT NULL DEFAULT '',
                PRIMARY KEY (iHeaderID),
                KEY IX_iFreightOnBoardID (iFreightOnBoardID),
                KEY IX_iOriginregion (cOriginRegioncode),
                KEY IX_iDestinationregion (cDestinationRegioncode),
                KEY IX_iOriginregion_iDestinationregion (cOriginUncode,cDestinationUncode)
            )ENGINE=InnoDB;
            
INSERT INTO grdb_sessionHeader_FOB_(iFreightOnBoardID,cQuotingMember,cCustomeralias,cScaccode,cOriginRegioncode,cOriginCFSUncode,cOriginConsoleCFSUncode,cOriginPortUncode,
cTransshipment_1,cTransshipment_2,cTransshipment_3,cDestinationRegioncode,cDestinationPortUncode,cDestinationDeconsoleCFSUncode,cDestinationCFSUncode,
cQuotingregion,cOriginUncode,cDestinationUncode) SELECT a.iFreightOnBoardID,a.cQuotingMember,a.cCustomeralias,a.cScaccode,a.cOriginRegioncode,a.cOriginCFSUncode,a.cOriginConsoleCFSUncode,a.cOriginPortUncode,
a.cTransshipment_1,a.cTransshipment_2,a.cTransshipment_3,a.cDestinationRegioncode,a.cDestinationPortUncode,a.cDestinationDeconsoleCFSUncode,a.cDestinationCFSUncode,
a.cQuotingregion,a.cOriginUncode,a.cDestinationUncode FROM grdb_FreightOnBoard_Write as a WHERE  a.iStatus=0  AND a.iActive=5;

select * from grdb_Spreadsheet_map;