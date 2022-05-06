---
title: "Excel Readable CSV in PHP"
date: 2022-03-26T00:20:25+08:00
tags: [php, php-coding]
draft: false
---

Yes, csv is simple BUT if you want it readable in Excel (at least on Windows), you need to prepend it with a hidden BOM and as UTF8.

Tried every possible suggestions in stackoverflow that says it works BUT it doesn't.

So, try the phpoffice approach. It works for me...

Install
```
~$ cd /an/isolated/directory
~$ composer require php-office/phpspreadsheet
~$ composer install
```

Try this code:
```
<?php
    require 'vendor/autoload.php';

    use PhpOffice\PhpSpreadsheet\Spreadsheet;
    use PhpOffice\PhpSpreadsheet\Writer\Csv;


    const CSV_FILENAME='csv-example.csv';

    $data = array (
        array("George", "male", 91),
        array("Lito", "male", 40),
        array("Katarzyna", "female", 18),
    );

    # It starts as a Spreadsheet...
    $spreadsheet = new Spreadsheet();
    $worksheet = $spreadsheet->getActiveSheet();

    # Create the headers
    $worksheet->getCell("A1")->setValue('name');
    $worksheet->getCell("B1")->setValue('sex');
    $worksheet->getCell("C1")->setValue('age');

    # write the data
    $cell = 2; // at row2 since above headers are in row1
    foreach ($data as $row) {
        $cellColumn='A';
        foreach ($row as $item) {
            $worksheet->getCell("$cellColumn$cell")->setValue(mb_convert_encoding($item, "UTF-8", "auto"));
            $cellColumn++;
        }
        $cell++;

    }

    // Convert to CSV UTF8-BOM encoding so it is Excel readable
    $writer = new Csv($spreadsheet);
    $writer->setUseBOM(true);
    $writer->save(CSV_FILENAME);
```

Tips: Verify the encoding is "UTF8-BOM" in Notepad++. In bash you can check using this approach: https://ismael.casimpan.com/quicktasks/post/check-csv-bom-using-bash/

Reference:
* [PHPOffice Manual](https://phpspreadsheet.readthedocs.io/en/latest/)
