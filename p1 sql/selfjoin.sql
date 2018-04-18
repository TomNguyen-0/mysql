From eckberg@edoras.sdsu.edu Fri Jul 14 01:30:18 2017
Return-Path: <eckberg@edoras.sdsu.edu>
X-Original-To: cssc0020
Delivered-To: cssc0020@edoras.sdsu.edu
Received: by edoras.sdsu.edu (Postfix, from userid 1015)
	id 9D1176000048; Fri, 14 Jul 2017 01:30:18 -0700 (PDT)
Date: Fri, 14 Jul 2017 01:30:18 -0700
To: eckberg@edoras.sdsu.edu
Subject: selfjoin.sql
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20170714083018.9D1176000048@edoras.sdsu.edu>
From: eckberg@edoras.sdsu.edu

SET PAGES 50
SET PAUSE ON
SELECT e.ename || ' works for '||e2.ename AS "Who's the Boss"
 FROM empbb02 e, empbb02 e2
 WHERE e.boss = e2.empno; 
-- notice that RICKEY is not listed as having a boss due to null-value

