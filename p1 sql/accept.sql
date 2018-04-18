From eckberg@edoras.sdsu.edu Tue Jul 18 23:58:57 2017
Return-Path: <eckberg@edoras.sdsu.edu>
X-Original-To: cssc0020
Delivered-To: cssc0020@edoras.sdsu.edu
Received: by edoras.sdsu.edu (Postfix, from userid 1015)
	id A452E6000048; Tue, 18 Jul 2017 23:58:57 -0700 (PDT)
Date: Tue, 18 Jul 2017 23:58:57 -0700
To: eckberg@edoras.sdsu.edu
Subject: accept.sql
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20170719065857.A452E6000048@edoras.sdsu.edu>
From: eckberg@edoras.sdsu.edu

-- use this to demo ACCEPT ... PROMPT

ACCEPT num PROMPT 'Please enter the age of an uncle: '
ACCEPT str PROMPT 'Please enter the name of an uncle: '
ACCEPT iq PROMPT 'Please enter the IQ of your uncle: '
INSERT INTO tp VALUES(&num,'&str',&iq);

