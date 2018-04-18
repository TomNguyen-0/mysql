From eckberg@edoras.sdsu.edu Tue Jul 18 23:58:24 2017
Return-Path: <eckberg@edoras.sdsu.edu>
X-Original-To: cssc0020
Delivered-To: cssc0020@edoras.sdsu.edu
Received: by edoras.sdsu.edu (Postfix, from userid 1015)
	id 1FB8C6000048; Tue, 18 Jul 2017 23:58:24 -0700 (PDT)
Date: Tue, 18 Jul 2017 23:58:24 -0700
To: eckberg@edoras.sdsu.edu
Subject: sequence.sql
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20170719065824.1FB8C6000048@edoras.sdsu.edu>
From: eckberg@edoras.sdsu.edu

SET PAGES 200
SET PAUSE ON
SET ECHO ON
DROP SEQUENCE deptbb02_deptno;
CREATE SEQUENCE deptbb02_deptno
    INCREMENT BY 10
    MINVALUE 10
    START WITH 60
    --MAXVALUE 200
    --NOCACHE
    NOCYCLE;
SELECT * from user_sequences;
INSERT INTO deptbb02 VALUES (deptbb02_deptno.NEXTVAL,'snacks',null,null,
'keep on truckin');
select * from deptbb02;
delete from deptbb02 where deptno > 50;
SELECT deptbb02_deptno.CURRVAL from dual;
-- CREATE INDEX empbb02_ename_ndx ON empbb02(ename);

