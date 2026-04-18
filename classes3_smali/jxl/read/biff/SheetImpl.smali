.class public Ljxl/read/biff/SheetImpl;
.super Ljava/lang/Object;
.source "SheetImpl.java"

# interfaces
.implements Ljxl/Sheet;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private cells:[[Ljxl/Cell;

.field private charts:Ljava/util/ArrayList;

.field private columnBreaks:[I

.field private columnInfosArray:Ljava/util/ArrayList;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private excelFile:Ljxl/read/biff/File;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hidden:Z

.field private hyperlinks:Ljava/util/ArrayList;

.field private localNames:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:[Ljxl/Range;

.field private name:Ljava/lang/String;

.field private nineteenFour:Z

.field private numCols:I

.field private numRows:I

.field private plsRecord:Ljxl/read/biff/PLSRecord;

.field private rowBreaks:[I

.field private rowProperties:Ljava/util/ArrayList;

.field private settings:Ljxl/SheetSettings;

.field private sharedFormulas:Ljava/util/ArrayList;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheetBof:Ljxl/read/biff/BOFRecord;

.field private startPosition:I

.field private workbook:Ljxl/read/biff/WorkbookParser;

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-class v0, Ljxl/read/biff/SheetImpl;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    .line 284
    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 285
    iput-object p3, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 286
    iput-object p4, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    .line 287
    iput-object p5, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 288
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    .line 289
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->sharedFormulas:Ljava/util/ArrayList;

    .line 290
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 291
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    .line 294
    iput-boolean p6, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    .line 295
    iput-object p7, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    .line 296
    invoke-virtual {p7}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object p2

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    .line 299
    invoke-virtual {p1}, Ljxl/read/biff/File;->getPos()I

    move-result p2

    iput p2, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    .line 301
    iget-object p2, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {p2}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 304
    iget p2, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    iget-object p3, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {p3}, Ljxl/read/biff/BOFRecord;->getLength()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    sub-int/2addr p2, p3

    iput p2, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    :cond_50
    const/4 p2, 0x1

    const/4 p3, 0x1

    :cond_52
    :goto_52
    if-lt p3, p2, :cond_71

    .line 312
    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p4

    .line 315
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getCode()I

    move-result p5

    sget-object p6, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    iget p6, p6, Ljxl/biff/Type;->value:I

    if-ne p5, p6, :cond_64

    add-int/lit8 p3, p3, -0x1

    .line 320
    :cond_64
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getCode()I

    move-result p4

    sget-object p5, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    iget p5, p5, Ljxl/biff/Type;->value:I

    if-ne p4, p5, :cond_52

    add-int/lit8 p3, p3, 0x1

    goto :goto_52

    :cond_71
    return-void
.end method


# virtual methods
.method addLocalName(Ljxl/read/biff/NameRecord;)V
    .registers 3

    .line 1202
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    .line 1207
    :cond_b
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final clear()V
    .registers 2

    const/4 v0, 0x0

    .line 678
    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 679
    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    .line 680
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 681
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 685
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 687
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1f
    return-void
.end method

.method public getAutoFilter()Ljxl/biff/AutoFilter;
    .registers 2

    .line 1230
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method public getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .registers 2

    .line 1121
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method public getCell(II)Ljxl/Cell;
    .registers 5

    .line 351
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 353
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 356
    :cond_7
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    if-nez v0, :cond_1a

    .line 360
    new-instance v0, Ljxl/biff/EmptyCell;

    invoke-direct {v0, p1, p2}, Ljxl/biff/EmptyCell;-><init>(II)V

    .line 361
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object p2, v1, p2

    aput-object v0, p2, p1

    :cond_1a
    return-object v0
.end method

.method public final getCharts()[Ljxl/biff/drawing/Chart;
    .registers 5

    .line 919
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljxl/biff/drawing/Chart;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    .line 923
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/Chart;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return-object v1
.end method

.method public getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;
    .registers 4

    .line 653
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/ColumnInfoRecord;

    const/4 v1, 0x0

    .line 654
    :goto_9
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 656
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/ColumnInfoRecord;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public final getColumnPageBreaks()[I
    .registers 2

    .line 909
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnBreaks:[I

    return-object v0
.end method

.method public getColumns()I
    .registers 2

    .line 486
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 488
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 491
    :cond_7
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    return v0
.end method

.method public getConditionalFormats()[Ljxl/biff/ConditionalFormat;
    .registers 3

    .line 1217
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/ConditionalFormat;

    .line 1219
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/ConditionalFormat;

    return-object v0
.end method

.method public getDataValidation()Ljxl/biff/DataValidation;
    .registers 2

    .line 857
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public final getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;
    .registers 3

    .line 935
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/drawing/DrawingGroupObject;

    .line 936
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/drawing/DrawingGroupObject;

    return-object v0
.end method

.method public getHyperlinks()[Ljxl/Hyperlink;
    .registers 4

    .line 809
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/Hyperlink;

    const/4 v1, 0x0

    .line 811
    :goto_9
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 813
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/Hyperlink;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .registers 2

    .line 1240
    iget v0, p0, Ljxl/read/biff/SheetImpl;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .registers 2

    .line 1250
    iget v0, p0, Ljxl/read/biff/SheetImpl;->maxRowOutlineLevel:I

    return v0
.end method

.method public getMergedCells()[Ljxl/Range;
    .registers 2

    .line 826
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/Range;

    :cond_7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 583
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPLS()Ljxl/read/biff/PLSRecord;
    .registers 2

    .line 1111
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->plsRecord:Ljxl/read/biff/PLSRecord;

    return-object v0
.end method

.method public getRow(I)[Ljxl/Cell;
    .registers 7

    .line 505
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 507
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 512
    :cond_7
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ltz v0, :cond_1e

    if-nez v3, :cond_1e

    .line 515
    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v4, v4, p1

    aget-object v4, v4, v0

    if-eqz v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1e
    add-int/lit8 v1, v0, 0x1

    .line 526
    new-array v1, v1, [Ljxl/Cell;

    :goto_22
    if-gt v2, v0, :cond_2d

    .line 530
    invoke-virtual {p0, v2, p1}, Ljxl/read/biff/SheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2d
    return-object v1
.end method

.method public final getRowPageBreaks()[I
    .registers 2

    .line 899
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowBreaks:[I

    return-object v0
.end method

.method public getRowProperties()[Ljxl/read/biff/RowRecord;
    .registers 5

    .line 841
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljxl/read/biff/RowRecord;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    .line 844
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/RowRecord;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return-object v1
.end method

.method public getRows()I
    .registers 2

    .line 469
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 471
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 474
    :cond_7
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    return v0
.end method

.method public getSettings()Ljxl/SheetSettings;
    .registers 2

    .line 969
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method public getSheetBof()Ljxl/read/biff/BOFRecord;
    .registers 2

    .line 1089
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getWorkbook()Ljxl/read/biff/WorkbookParser;
    .registers 2

    .line 980
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    return-object v0
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .registers 2

    .line 1100
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .registers 2

    .line 959
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method final readSheet()V
    .registers 13

    .line 699
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 701
    iput v1, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    .line 702
    iput v1, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 703
    fill-array-data v0, :array_160

    const-class v2, Ljxl/Cell;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljxl/Cell;

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 707
    :cond_1d
    new-instance v0, Ljxl/read/biff/SheetReader;

    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    iget-object v7, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v8, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    iget-object v9, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    iget v10, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    move-object v2, v0

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Ljxl/read/biff/SheetReader;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V

    .line 716
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->read()V

    .line 719
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getNumRows()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    .line 720
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getNumCols()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    .line 721
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getCells()[[Ljxl/Cell;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 722
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getRowProperties()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    .line 723
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getColumnInfosArray()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    .line 724
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getHyperlinks()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 725
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getConditionalFormats()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    .line 726
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    .line 727
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getCharts()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    .line 728
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getDrawings()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 730
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getMergedCells()[Ljxl/Range;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    .line 731
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    .line 732
    iget-boolean v3, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    invoke-virtual {v2, v3}, Ljxl/SheetSettings;->setHidden(Z)V

    .line 733
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getRowBreaks()[I

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->rowBreaks:[I

    .line 734
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getColumnBreaks()[I

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->columnBreaks:[I

    .line 735
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 736
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->plsRecord:Ljxl/read/biff/PLSRecord;

    .line 737
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    .line 738
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getMaxRowOutlineLevel()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->maxRowOutlineLevel:I

    .line 739
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getMaxColumnOutlineLevel()I

    move-result v0

    iput v0, p0, Ljxl/read/biff/SheetImpl;->maxColumnOutlineLevel:I

    .line 743
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 745
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 748
    :cond_bf
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_dd

    .line 750
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/ColumnInfoRecord;

    .line 752
    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/read/biff/ColumnInfoRecord;

    .line 760
    :cond_dd
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_15e

    .line 762
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e5
    :goto_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 764
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/NameRecord;

    .line 765
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    sget-object v4, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    if-ne v3, v4, :cond_11c

    .line 767
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_e5

    .line 769
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v2

    aget-object v2, v2, v1

    .line 770
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v4

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v5

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v6

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Ljxl/SheetSettings;->setPrintArea(IIII)V

    goto :goto_e5

    .line 776
    :cond_11c
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    sget-object v4, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    if-ne v3, v4, :cond_e5

    const/4 v3, 0x0

    .line 783
    :goto_125
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_e5

    .line 785
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v4

    aget-object v4, v4, v3

    .line 786
    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v5

    if-nez v5, :cond_14e

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_14e

    .line 788
    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v6

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Ljxl/SheetSettings;->setPrintTitlesRow(II)V

    goto :goto_15b

    .line 793
    :cond_14e
    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v6

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Ljxl/SheetSettings;->setPrintTitlesCol(II)V

    :goto_15b
    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    :cond_15e
    return-void

    nop

    :array_160
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method final setHidden(Z)V
    .registers 2

    .line 669
    iput-boolean p1, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    return-void
.end method

.method final setName(Ljava/lang/String;)V
    .registers 2

    .line 593
    iput-object p1, p0, Ljxl/read/biff/SheetImpl;->name:Ljava/lang/String;

    return-void
.end method
