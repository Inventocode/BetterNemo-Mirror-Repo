.class public Ljxl/read/biff/WorkbookParser;
.super Ljxl/Workbook;
.source "WorkbookParser.java"

# interfaces
.implements Ljxl/biff/formula/ExternalSheet;
.implements Ljxl/biff/WorkbookMethods;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private addInFunctions:Ljava/util/ArrayList;

.field private bofs:I

.field private boundsheets:Ljava/util/ArrayList;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private containsMacros:Z

.field private countryRecord:Ljxl/read/biff/CountryRecord;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private excelFile:Ljxl/read/biff/File;

.field private externSheet:Ljxl/read/biff/ExternalSheetRecord;

.field private fonts:Ljxl/biff/Fonts;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private lastSheet:Ljxl/read/biff/SheetImpl;

.field private lastSheetIndex:I

.field private msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

.field private nameTable:Ljava/util/ArrayList;

.field private namedRecords:Ljava/util/HashMap;

.field private nineteenFour:Z

.field private settings:Ljxl/WorkbookSettings;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheets:Ljava/util/ArrayList;

.field private supbooks:Ljava/util/ArrayList;

.field private wbProtected:Z

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private xctRecords:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-class v0, Ljxl/read/biff/WorkbookParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/File;Ljxl/WorkbookSettings;)V
    .registers 5

    .line 187
    invoke-direct {p0}, Ljxl/Workbook;-><init>()V

    .line 188
    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    .line 190
    new-instance p1, Ljxl/biff/Fonts;

    invoke-direct {p1}, Ljxl/biff/Fonts;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    .line 191
    new-instance p1, Ljxl/biff/FormattingRecords;

    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    invoke-direct {p1, v1}, Ljxl/biff/FormattingRecords;-><init>(Ljxl/biff/Fonts;)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    .line 194
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    const/4 p1, -0x1

    .line 195
    iput p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    .line 197
    iput-boolean p1, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    .line 198
    iput-object p2, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    .line 199
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->xctRecords:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final addSheet(Ljxl/Sheet;)V
    .registers 3

    .line 535
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .registers 2

    .line 516
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    if-eqz v0, :cond_7

    .line 518
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->clear()V

    .line 520
    :cond_7
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->clear()V

    .line 522
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 524
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_17
    return-void
.end method

.method public containsMacros()Z
    .registers 2

    .line 1221
    iget-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    return v0
.end method

.method public getAddInFunctionNames()[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1252
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .registers 2

    .line 1231
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method public getCompoundFile()Ljxl/read/biff/CompoundFile;
    .registers 2

    .line 1211
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getCompoundFile()Ljxl/read/biff/CompoundFile;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRecord()Ljxl/read/biff/CountryRecord;
    .registers 2

    .line 1241
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->countryRecord:Ljxl/read/biff/CountryRecord;

    return-object v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .registers 2

    .line 1197
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getExternalSheetName(I)Ljava/lang/String;
    .registers 10

    .line 371
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 373
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/BoundsheetRecord;

    .line 375
    invoke-virtual {p1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 378
    :cond_15
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 379
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SupbookRecord;

    .line 381
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v1, p1}, Ljxl/read/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result v1

    .line 382
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v2, p1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result p1

    .line 386
    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v2

    sget-object v3, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    const-string v4, "#REF"

    const-string v5, "\'"

    const v6, 0xffff

    if-ne v2, v3, :cond_a0

    if-ne v1, v6, :cond_42

    move-object v0, v4

    goto :goto_4e

    .line 395
    :cond_42
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/BoundsheetRecord;

    .line 396
    invoke-virtual {v0}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    if-ne p1, v6, :cond_51

    goto :goto_5d

    .line 405
    :cond_51
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/BoundsheetRecord;

    .line 406
    invoke-virtual {v2}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_5d
    if-ne v1, p1, :cond_60

    goto :goto_74

    .line 409
    :cond_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_74
    const/16 p1, 0x27

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7e

    goto :goto_84

    :cond_7e
    const-string v1, "\'\'"

    invoke-static {v0, v5, v1}, Ljxl/biff/StringHelper;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_84
    const/16 v1, 0x20

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_8d

    goto :goto_9f

    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9f
    return-object v0

    .line 421
    :cond_a0
    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v2

    sget-object v3, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v2, v3, :cond_ec

    .line 424
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "["

    .line 428
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v1, v6, :cond_d4

    goto :goto_d8

    .line 431
    :cond_d4
    invoke-virtual {v0, v1}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    :goto_d8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq p1, v1, :cond_e4

    .line 434
    invoke-virtual {v0, p1}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :cond_e4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 441
    :cond_ec
    sget-object p1, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    const-string v0, "Unknown Supbook 3"

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const-string p1, "[UNKNOWN]"

    return-object p1
.end method

.method public getExternalSheetRecord()Ljxl/read/biff/ExternalSheetRecord;
    .registers 2

    .line 951
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    return-object v0
.end method

.method public getFonts()Ljxl/biff/Fonts;
    .registers 2

    .line 996
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    return-object v0
.end method

.method public getFormattingRecords()Ljxl/biff/FormattingRecords;
    .registers 2

    .line 940
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NameRangeException;
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 1170
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 1174
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/NameRecord;

    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1172
    :cond_17
    new-instance p1, Ljxl/biff/NameRangeException;

    invoke-direct {p1}, Ljxl/biff/NameRangeException;-><init>()V

    throw p1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .registers 3

    .line 1185
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/NameRecord;

    if-eqz p1, :cond_f

    .line 1187
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getIndex()I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public getNameRecords()[Ljxl/read/biff/NameRecord;
    .registers 3

    .line 985
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/NameRecord;

    .line 986
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/read/biff/NameRecord;

    return-object v0
.end method

.method public getNumberOfSheets()I
    .registers 2

    .line 507
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSettings()Ljxl/WorkbookSettings;
    .registers 2

    .line 1135
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getSheet(I)Ljxl/Sheet;
    .registers 4

    .line 239
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    if-eqz v0, :cond_9

    iget v1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    if-ne v1, p1, :cond_9

    return-object v0

    :cond_9
    if-eqz v0, :cond_19

    .line 247
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->clear()V

    .line 249
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 251
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 255
    :cond_19
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SheetImpl;

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    .line 256
    iput p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    .line 257
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 259
    iget-object p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    return-object p1
.end method

.method public getSupbookRecords()[Ljxl/read/biff/SupbookRecord;
    .registers 3

    .line 973
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/SupbookRecord;

    .line 974
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/read/biff/SupbookRecord;

    return-object v0
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .registers 2

    .line 1115
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getXCTRecords()[Ljxl/biff/XCTRecord;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/XCTRecord;

    .line 1287
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->xctRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/XCTRecord;

    return-object v0
.end method

.method public isProtected()Z
    .registers 2

    .line 1125
    iget-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    return v0
.end method

.method protected parse()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;,
            Ljxl/read/biff/PasswordException;
        }
    .end annotation

    .line 548
    new-instance v0, Ljxl/read/biff/BOFRecord;

    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 549
    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 550
    iget v1, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    .line 552
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_28

    .line 554
    :cond_20
    new-instance v0, Ljxl/read/biff/BiffException;

    sget-object v1, Ljxl/read/biff/BiffException;->unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v0

    .line 557
    :cond_28
    :goto_28
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isWorkbookGlobals()Z

    move-result v1

    if-eqz v1, :cond_4d7

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    .line 564
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v5, v4

    .line 567
    :cond_48
    :goto_48
    iget v6, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    if-ne v6, v2, :cond_3b1

    .line 569
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    .line 571
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->SST:Ljxl/biff/Type;

    if-ne v6, v7, :cond_91

    .line 573
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    .line 575
    :goto_63
    invoke-virtual {v6}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_7b

    .line 577
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    goto :goto_63

    .line 582
    :cond_7b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljxl/read/biff/Record;

    .line 583
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljxl/read/biff/Record;

    .line 585
    new-instance v7, Ljxl/read/biff/SSTRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v7, v5, v6, v8}, Ljxl/read/biff/SSTRecord;-><init>(Ljxl/read/biff/Record;[Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    iput-object v7, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    goto :goto_48

    .line 587
    :cond_91
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->FILEPASS:Ljxl/biff/Type;

    if-eq v6, v7, :cond_3ab

    .line 591
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    if-ne v6, v7, :cond_df

    .line 595
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 597
    new-instance v6, Ljxl/read/biff/NameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v6, v5, v7, v8}, Ljxl/read/biff/NameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;I)V

    goto :goto_c4

    .line 602
    :cond_b5
    new-instance v6, Ljxl/read/biff/NameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget-object v9, Ljxl/read/biff/NameRecord;->biff7:Ljxl/read/biff/NameRecord$Biff7;

    invoke-direct {v6, v5, v7, v8, v9}, Ljxl/read/biff/NameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;ILjxl/read/biff/NameRecord$Biff7;)V

    .line 608
    :goto_c4
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->isGlobal()Z

    move-result v7

    if-eqz v7, :cond_da

    .line 612
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48

    .line 616
    :cond_da
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 619
    :cond_df
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    if-ne v6, v7, :cond_105

    .line 623
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 625
    new-instance v6, Ljxl/biff/FontRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/biff/FontRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_fe

    .line 629
    :cond_f5
    new-instance v6, Ljxl/biff/FontRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v8, Ljxl/biff/FontRecord;->biff7:Ljxl/biff/FontRecord$Biff7;

    invoke-direct {v6, v5, v7, v8}, Ljxl/biff/FontRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FontRecord$Biff7;)V

    .line 631
    :goto_fe
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {v7, v6}, Ljxl/biff/Fonts;->addFont(Ljxl/biff/FontRecord;)V

    goto/16 :goto_48

    .line 633
    :cond_105
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->PALETTE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_119

    .line 635
    new-instance v6, Ljxl/biff/PaletteRecord;

    invoke-direct {v6, v5}, Ljxl/biff/PaletteRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 636
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v7, v6}, Ljxl/biff/FormattingRecords;->setPalette(Ljxl/biff/PaletteRecord;)V

    goto/16 :goto_48

    .line 638
    :cond_119
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->NINETEENFOUR:Ljxl/biff/Type;

    if-ne v6, v7, :cond_12e

    .line 640
    new-instance v6, Ljxl/read/biff/NineteenFourRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/NineteenFourRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 641
    invoke-virtual {v6}, Ljxl/read/biff/NineteenFourRecord;->is1904()Z

    move-result v6

    iput-boolean v6, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    goto/16 :goto_48

    .line 643
    :cond_12e
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_161

    .line 646
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_147

    .line 648
    new-instance v6, Ljxl/biff/FormatRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/FormatRecord;->biff8:Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/FormatRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V

    goto :goto_150

    .line 652
    :cond_147
    new-instance v6, Ljxl/biff/FormatRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/FormatRecord;->biff7:Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/FormatRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V

    .line 656
    :goto_150
    :try_start_150
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v7, v6}, Ljxl/biff/FormattingRecords;->addFormat(Ljxl/biff/DisplayFormat;)V
    :try_end_155
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_150 .. :try_end_155} :catch_157

    goto/16 :goto_48

    :catch_157
    move-exception v6

    .line 661
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    goto/16 :goto_48

    .line 664
    :cond_161
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    if-ne v6, v7, :cond_193

    .line 667
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_179

    .line 669
    new-instance v6, Ljxl/biff/XFRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/XFRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V

    goto :goto_182

    .line 673
    :cond_179
    new-instance v6, Ljxl/biff/XFRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/XFRecord;->biff7:Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/XFRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V

    .line 678
    :goto_182
    :try_start_182
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v7, v6}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_187
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_182 .. :try_end_187} :catch_189

    goto/16 :goto_48

    :catch_189
    move-exception v6

    .line 683
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    goto/16 :goto_48

    .line 686
    :cond_193
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->BOUNDSHEET:Ljxl/biff/Type;

    if-ne v6, v7, :cond_1d2

    .line 690
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_1a9

    .line 692
    new-instance v6, Ljxl/read/biff/BoundsheetRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/BoundsheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_1b0

    .line 696
    :cond_1a9
    new-instance v6, Ljxl/read/biff/BoundsheetRecord;

    sget-object v7, Ljxl/read/biff/BoundsheetRecord;->biff7:Ljxl/read/biff/BoundsheetRecord$Biff7;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/BoundsheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/BoundsheetRecord$Biff7;)V

    .line 699
    :goto_1b0
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->isSheet()Z

    move-result v7

    if-eqz v7, :cond_1bd

    .line 701
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 703
    :cond_1bd
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->isChart()Z

    move-result v7

    if-eqz v7, :cond_48

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v7}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v7

    if-nez v7, :cond_48

    .line 705
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 708
    :cond_1d2
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->EXTERNSHEET:Ljxl/biff/Type;

    if-ne v6, v7, :cond_1f8

    .line 710
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_1eb

    .line 712
    new-instance v6, Ljxl/read/biff/ExternalSheetRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    goto/16 :goto_48

    .line 716
    :cond_1eb
    new-instance v6, Ljxl/read/biff/ExternalSheetRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v8, Ljxl/read/biff/ExternalSheetRecord;->biff7:Ljxl/read/biff/ExternalSheetRecord$Biff7;

    invoke-direct {v6, v5, v7, v8}, Ljxl/read/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/ExternalSheetRecord$Biff7;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    goto/16 :goto_48

    .line 720
    :cond_1f8
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->XCT:Ljxl/biff/Type;

    if-ne v6, v7, :cond_20c

    .line 722
    new-instance v6, Ljxl/biff/XCTRecord;

    invoke-direct {v6, v5}, Ljxl/biff/XCTRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 723
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->xctRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 725
    :cond_20c
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CODEPAGE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_224

    .line 727
    new-instance v6, Ljxl/read/biff/CodepageRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/CodepageRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 728
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/CodepageRecord;->getCharacterSet()I

    move-result v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setCharacterSet(I)V

    goto/16 :goto_48

    .line 730
    :cond_224
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    if-ne v6, v7, :cond_258

    .line 732
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    .line 733
    :goto_232
    invoke-virtual {v6}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_24a

    .line 735
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljxl/read/biff/Record;->addContinueRecord(Ljxl/read/biff/Record;)V

    .line 736
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    goto :goto_232

    .line 739
    :cond_24a
    new-instance v6, Ljxl/read/biff/SupbookRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/SupbookRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    .line 740
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 742
    :cond_258
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->EXTERNNAME:Ljxl/biff/Type;

    if-ne v6, v7, :cond_278

    .line 744
    new-instance v6, Ljxl/read/biff/ExternalNameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/ExternalNameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    .line 746
    invoke-virtual {v6}, Ljxl/read/biff/ExternalNameRecord;->isAddInFunction()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 748
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljxl/read/biff/ExternalNameRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 751
    :cond_278
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    if-ne v6, v7, :cond_28d

    .line 753
    new-instance v6, Ljxl/read/biff/ProtectRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/ProtectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 754
    invoke-virtual {v6}, Ljxl/read/biff/ProtectRecord;->isProtected()Z

    move-result v6

    iput-boolean v6, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    goto/16 :goto_48

    .line 756
    :cond_28d
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->OBJPROJ:Ljxl/biff/Type;

    if-ne v6, v7, :cond_299

    .line 758
    iput-boolean v2, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    goto/16 :goto_48

    .line 760
    :cond_299
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->COUNTRY:Ljxl/biff/Type;

    if-ne v6, v7, :cond_2aa

    .line 762
    new-instance v6, Ljxl/read/biff/CountryRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/CountryRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->countryRecord:Ljxl/read/biff/CountryRecord;

    goto/16 :goto_48

    .line 764
    :cond_2aa
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->MSODRAWINGGROUP:Ljxl/biff/Type;

    if-ne v6, v7, :cond_2f5

    .line 766
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v6

    if-nez v6, :cond_48

    .line 768
    new-instance v6, Ljxl/biff/drawing/MsoDrawingGroupRecord;

    invoke-direct {v6, v5}, Ljxl/biff/drawing/MsoDrawingGroupRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    .line 770
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-nez v6, :cond_2ce

    .line 772
    new-instance v6, Ljxl/biff/drawing/DrawingGroup;

    sget-object v7, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    invoke-direct {v6, v7}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/Origin;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 775
    :cond_2ce
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    invoke-virtual {v6, v7}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/MsoDrawingGroupRecord;)V

    .line 777
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    .line 778
    :goto_2db
    invoke-virtual {v6}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_48

    .line 780
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v7}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/read/biff/Record;)V

    .line 781
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    goto :goto_2db

    .line 785
    :cond_2f5
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    if-ne v6, v7, :cond_306

    .line 787
    new-instance v6, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    goto/16 :goto_48

    .line 789
    :cond_306
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v6, v7, :cond_315

    .line 791
    iget v6, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    sub-int/2addr v6, v2

    iput v6, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    goto/16 :goto_48

    .line 793
    :cond_315
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->REFRESHALL:Ljxl/biff/Type;

    if-ne v6, v7, :cond_32d

    .line 795
    new-instance v6, Ljxl/read/biff/RefreshAllRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/RefreshAllRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 796
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/RefreshAllRecord;->getRefreshAll()Z

    move-result v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setRefreshAll(Z)V

    goto/16 :goto_48

    .line 798
    :cond_32d
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->TEMPLATE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_345

    .line 800
    new-instance v6, Ljxl/read/biff/TemplateRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/TemplateRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 801
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/TemplateRecord;->getTemplate()Z

    move-result v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setTemplate(Z)V

    goto/16 :goto_48

    .line 803
    :cond_345
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->EXCEL9FILE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_35d

    .line 805
    new-instance v6, Ljxl/read/biff/Excel9FileRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/Excel9FileRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 806
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/Excel9FileRecord;->getExcel9File()Z

    move-result v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setExcel9File(Z)V

    goto/16 :goto_48

    .line 808
    :cond_35d
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->WINDOWPROTECT:Ljxl/biff/Type;

    if-ne v6, v7, :cond_375

    .line 810
    new-instance v6, Ljxl/read/biff/WindowProtectedRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/WindowProtectedRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 811
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/WindowProtectedRecord;->getWindowProtected()Z

    move-result v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setWindowProtected(Z)V

    goto/16 :goto_48

    .line 813
    :cond_375
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->HIDEOBJ:Ljxl/biff/Type;

    if-ne v6, v7, :cond_38d

    .line 815
    new-instance v6, Ljxl/read/biff/HideobjRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/HideobjRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 816
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/HideobjRecord;->getHideMode()I

    move-result v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setHideobj(I)V

    goto/16 :goto_48

    .line 818
    :cond_38d
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    if-ne v6, v7, :cond_48

    .line 820
    new-instance v6, Ljxl/read/biff/WriteAccessRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v7

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7, v8}, Ljxl/read/biff/WriteAccessRecord;-><init>(Ljxl/read/biff/Record;ZLjxl/WorkbookSettings;)V

    .line 822
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/WriteAccessRecord;->getWriteAccess()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setWriteAccess(Ljava/lang/String;)V

    goto/16 :goto_48

    .line 589
    :cond_3ab
    new-instance v0, Ljxl/read/biff/PasswordException;

    invoke-direct {v0}, Ljxl/read/biff/PasswordException;-><init>()V

    throw v0

    .line 832
    :cond_3b1
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3ce

    .line 834
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    .line 836
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v0, v1, :cond_3ce

    .line 838
    new-instance v0, Ljxl/read/biff/BOFRecord;

    invoke-direct {v0, v5}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v10, v0

    goto :goto_3cf

    :cond_3ce
    move-object v10, v4

    :goto_3cf
    if-eqz v10, :cond_497

    .line 843
    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v0

    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_497

    .line 845
    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-nez v0, :cond_3f2

    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_3ea

    goto :goto_3f2

    .line 847
    :cond_3ea
    new-instance v0, Ljxl/read/biff/BiffException;

    sget-object v1, Ljxl/read/biff/BiffException;->unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v0

    .line 850
    :cond_3f2
    :goto_3f2
    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v0

    if-eqz v0, :cond_427

    .line 853
    new-instance v0, Ljxl/read/biff/SheetImpl;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v9, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v11, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v12, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    move-object v6, v0

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ljxl/read/biff/SheetImpl;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V

    .line 861
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/BoundsheetRecord;

    .line 863
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljxl/read/biff/SheetImpl;->setName(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->setHidden(Z)V

    .line 865
    invoke-virtual {p0, v0}, Ljxl/read/biff/WorkbookParser;->addSheet(Ljxl/Sheet;)V

    goto :goto_47a

    .line 867
    :cond_427
    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_45c

    .line 870
    new-instance v0, Ljxl/read/biff/SheetImpl;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v9, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v11, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v12, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    move-object v6, v0

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ljxl/read/biff/SheetImpl;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V

    .line 878
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/BoundsheetRecord;

    .line 880
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljxl/read/biff/SheetImpl;->setName(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->setHidden(Z)V

    .line 882
    invoke-virtual {p0, v0}, Ljxl/read/biff/WorkbookParser;->addSheet(Ljxl/Sheet;)V

    goto :goto_47a

    .line 886
    :cond_45c
    sget-object v0, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    const-string v1, "BOF is unrecognized"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 889
    :goto_463
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47a

    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-eq v0, v1, :cond_47a

    .line 891
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    goto :goto_463

    .line 901
    :cond_47a
    :goto_47a
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3ce

    .line 903
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    .line 905
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v0, v1, :cond_3ce

    .line 907
    new-instance v10, Ljxl/read/biff/BOFRecord;

    invoke-direct {v10, v5}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    goto/16 :goto_3cf

    .line 913
    :cond_497
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_49b
    :goto_49b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d6

    .line 915
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/NameRecord;

    .line 917
    invoke-virtual {v1}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    if-nez v3, :cond_4b5

    .line 919
    sget-object v1, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    const-string v3, "Usage of a local non-builtin name"

    invoke-virtual {v1, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_49b

    .line 921
    :cond_4b5
    invoke-virtual {v1}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    sget-object v4, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    if-eq v3, v4, :cond_4c5

    invoke-virtual {v1}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    sget-object v4, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    if-ne v3, v4, :cond_49b

    .line 926
    :cond_4c5
    iget-object v3, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljxl/read/biff/NameRecord;->getSheetRef()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/SheetImpl;

    .line 927
    invoke-virtual {v3, v1}, Ljxl/read/biff/SheetImpl;->addLocalName(Ljxl/read/biff/NameRecord;)V

    goto :goto_49b

    :cond_4d6
    return-void

    .line 559
    :cond_4d7
    new-instance v0, Ljxl/read/biff/BiffException;

    sget-object v1, Ljxl/read/biff/BiffException;->expectedGlobals:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v0
.end method
