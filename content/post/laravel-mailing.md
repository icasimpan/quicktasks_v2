---
title: "Laravel Mailing"
date: 2022-04-21T00:20:25+08:00
categories: [web-development]
series: [backend]
tags: [laravel, mail]
draft: false
---

# Single Email With Multiple Recipients
```
$emailRecipient = ['email01@example.com', 'email02@example.com'];
Mail::to($emailRecipient)->send(new MailOnServiceFailure($logTimestamp, $failedContent));
Log::info("Service Failure Mail Alert sent successfully to " . json_encode($emailRecipient));
```
# Single Email Per Recipients
```
$emailRecipient = ['email01@example.com', 'email02@example.com'];
foreach ($emailRecipient as $eachEmail) {
    Mail::to($eachEmail)->send(new MailOnServiceFailure($logTimestamp, $failedContent);
    Log::info("Service Failure Mail Alert sent successfully to  {$eachEmail}.");
}
```
