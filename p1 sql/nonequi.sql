From eckberg@edoras.sdsu.edu Tue Jul 18 23:55:24 2017
Return-Path: <eckberg@edoras.sdsu.edu>
X-Original-To: cssc0020
Delivered-To: cssc0020@edoras.sdsu.edu
Received: by edoras.sdsu.edu (Postfix, from userid 1015)
	id 735286000048; Tue, 18 Jul 2017 23:55:24 -0700 (PDT)
Date: Tue, 18 Jul 2017 23:55:24 -0700
To: eckberg@edoras.sdsu.edu
Subject: nonequi.sql
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20170719065524.735286000048@edoras.sdsu.edu>
From: eckberg@edoras.sdsu.edu

set pages 50
set pause on
set echo on
spool nonequi.dat
SELECT * FROM empbb02;
SELECT e.ename,e.sal,s.grade
 FROM empbb02 e, salsbb02 s
 WHERE e.deptno < 30 AND s.role = 'hitter' AND e.sal
     BETWEEN s.losal AND s.hisal;
set echo off
spool off
quit;

