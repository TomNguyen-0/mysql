From eckberg@edoras.sdsu.edu Fri Jul 21 08:57:53 2017
Return-Path: <eckberg@edoras.sdsu.edu>
X-Original-To: cssc0020
Delivered-To: cssc0020@edoras.sdsu.edu
Received: by edoras.sdsu.edu (Postfix, from userid 1015)
	id 907E96000048; Fri, 21 Jul 2017 08:57:53 -0700 (PDT)
Date: Fri, 21 Jul 2017 08:57:53 -0700
To: eckberg@edoras.sdsu.edu
Subject: getDnamebb02Test.sql
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20170721155753.907E96000048@edoras.sdsu.edu>
From: eckberg@edoras.sdsu.edu

-- this code invokes a stored function
column "department name" format A15;
spool getDnamebb02Test.dat
set echo on
set pages 100
SELECT ename,getDnamebb02(ename) AS "department name"
FROM empbb02;
set echo off
quit

