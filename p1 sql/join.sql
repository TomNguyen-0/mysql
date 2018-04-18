From eckberg@edoras.sdsu.edu Tue Jul 18 23:55:57 2017
Return-Path: <eckberg@edoras.sdsu.edu>
X-Original-To: cssc0020
Delivered-To: cssc0020@edoras.sdsu.edu
Received: by edoras.sdsu.edu (Postfix, from userid 1015)
	id 383A46000048; Tue, 18 Jul 2017 23:55:57 -0700 (PDT)
Date: Tue, 18 Jul 2017 23:55:57 -0700
To: eckberg@edoras.sdsu.edu
Subject: join.sql
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20170719065557.383A46000048@edoras.sdsu.edu>
From: eckberg@edoras.sdsu.edu

set pages 50
set pause on
set echo on
spool join.dat
-- the following is a classical self-join
SELECT INITCAP(e.ename) || ' works for '|| INITCAP(f.ename) AS "Boss"
   FROM empbb02 e, empbb02 f 
   WHERE e.boss = f.empno;
-- the following modifies the self-join above to create an Oracle 8 
--   outer join
SELECT INITCAP(e.ename) || ' works for '||INITCAP(f.ename) AS "Boss"
  FROM empbb02 e, empbb02 f
  WHERE e.boss = f.empno(+);
--The idea of an outer join of A and B is to include rows that do not
-- satisfy the join condition.  A left(right) join includes non-
-- matching rows of A (B).  A full outer join does both.
-- We illustrate the oracle 8i ideas with the following hokey examples
SELECT * FROM aaaa;
SELECT * FROM bbbb;
SELECT aaaa.a,aaaa.b,bbbb.c FROM aaaa,bbbb WHERE aaaa.b=bbbb.b;
-- right outer join follows
SELECT aaaa.a,aaaa.b,bbbb.c FROM aaaa,bbbb WHERE aaaa.b(+)=bbbb.b;
-- left outer join follows
SELECT aaaa.a,aaaa.b,bbbb.c FROM aaaa,bbbb WHERE aaaa.b=bbbb.b(+);
-- using 'both' plus signs does not seem to work.   This highly
-- bizarre syntax is replaced in Oracle 9i by code roughly like this:
SELECT aaaa.a,aaaa.b,bbbb.c FROM aaaa RIGHT OUTER JOIN bbbb
        ON aaaa.b=bbbb.b;
--   The word RIGHT can be replaced by either LEFT or FULL.  ANS SQL
-- uses similar syntax.   Here it is.
SELECT aaaa.a,aaaa.b,bbbb.c FROM aaaa LEFT OUTER JOIN bbbb
    ON aaaa.b=bbbb.b;
SELECT aaaa.a,aaaa.b,bbbb.c FROM aaaa FULL OUTER JOIN bbbb
    ON aaaa.b=bbbb.b;
set echo off
spool off
/   

