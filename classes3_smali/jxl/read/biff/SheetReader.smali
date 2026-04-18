.class final Ljxl/read/biff/SheetReader;
.super Ljava/lang/Object;
.source "SheetReader.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private cells:[[Ljxl/Cell;

.field private charts:Ljava/util/ArrayList;

.field private columnBreaks:[I

.field private columnInfosArray:Ljava/util/ArrayList;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawings:Ljava/util/ArrayList;

.field private excelFile:Ljxl/read/biff/File;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hyperlinks:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:[Ljxl/Range;

.field private nineteenFour:Z

.field private numCols:I

.field private numRows:I

.field private outOfBoundsCells:Ljava/util/ArrayList;

.field private plsRecord:Ljxl/read/biff/PLSRecord;

.field private rowBreaks:[I

.field private rowProperties:Ljava/util/ArrayList;

.field private settings:Ljxl/SheetSettings;

.field private sharedFormulas:Ljava/util/ArrayList;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private sheetBof:Ljxl/read/biff/BOFRecord;

.field private startPosition:I

.field private workbook:Ljxl/read/biff/WorkbookParser;

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    const-class v0, Ljxl/read/biff/SheetReader;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V
    .registers 10

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    .line 274
    iput-object p2, p0, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 275
    iput-object p3, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 276
    iput-object p4, p0, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    .line 277
    iput-object p5, p0, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    .line 279
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    .line 282
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    .line 283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    .line 285
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    .line 286
    iput-boolean p6, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    .line 287
    iput-object p7, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    .line 288
    iput p8, p0, Ljxl/read/biff/SheetReader;->startPosition:I

    .line 289
    iput-object p9, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    .line 290
    new-instance p1, Ljxl/SheetSettings;

    invoke-direct {p1, p9}, Ljxl/SheetSettings;-><init>(Ljxl/Sheet;)V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    .line 291
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method private addCell(Ljxl/Cell;)V
    .registers 6

    .line 303
    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v0, v1, :cond_5e

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    if-ge v0, v1, :cond_5e

    .line 305
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4f

    .line 307
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 310
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already contains data"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 313
    :cond_4f
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aput-object p1, v0, v1

    goto :goto_63

    .line 317
    :cond_5e
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_63
    return-void
.end method

.method private addCellComment(IILjava/lang/String;DD)V
    .registers 22

    move-object v0, p0

    .line 1492
    iget-object v1, v0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v1, v1, p2

    aget-object v1, v1, p1

    if-nez v1, :cond_4c

    .line 1495
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not present - adding a blank"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1497
    new-instance v1, Ljxl/read/biff/MulBlankCell;

    const/4 v5, 0x0

    iget-object v6, v0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v7, v0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v2, v1

    move/from16 v3, p2

    move v4, p1

    invoke-direct/range {v2 .. v7}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1502
    new-instance v2, Ljxl/CellFeatures;

    invoke-direct {v2}, Ljxl/CellFeatures;-><init>()V

    move-object v8, v2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    .line 1503
    invoke-virtual/range {v8 .. v13}, Ljxl/biff/BaseCellFeatures;->setReadComment(Ljava/lang/String;DD)V

    .line 1504
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1505
    invoke-direct {p0, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    return-void

    .line 1510
    :cond_4c
    instance-of v2, v1, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v2, :cond_6b

    .line 1512
    check-cast v1, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1513
    invoke-interface {v1}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v2

    if-nez v2, :cond_60

    .line 1517
    new-instance v2, Ljxl/CellFeatures;

    invoke-direct {v2}, Ljxl/CellFeatures;-><init>()V

    .line 1518
    invoke-interface {v1, v2}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    :cond_60
    move-object v3, v2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 1521
    invoke-virtual/range {v3 .. v8}, Ljxl/biff/BaseCellFeatures;->setReadComment(Ljava/lang/String;DD)V

    goto :goto_95

    .line 1525
    :cond_6b
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to add comment to cell type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_95
    return-void
.end method

.method private addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V
    .registers 14

    :goto_0
    if-gt p2, p4, :cond_7a

    move v6, p1

    :goto_3
    if-gt v6, p3, :cond_77

    const/4 v0, 0x0

    .line 1552
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v2, v1

    if-le v2, p2, :cond_14

    aget-object v2, v1, p2

    array-length v2, v2

    if-le v2, v6, :cond_14

    .line 1554
    aget-object v0, v1, p2

    aget-object v0, v0, v6

    :cond_14
    if-nez v0, :cond_32

    .line 1559
    new-instance v7, Ljxl/read/biff/MulBlankCell;

    const/4 v3, 0x0

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v0, v7

    move v1, p2

    move v2, v6

    invoke-direct/range {v0 .. v5}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1564
    new-instance v0, Ljxl/CellFeatures;

    invoke-direct {v0}, Ljxl/CellFeatures;-><init>()V

    .line 1565
    invoke-virtual {v0, p5}, Ljxl/biff/BaseCellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1566
    invoke-virtual {v7, v0}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1567
    invoke-direct {p0, v7}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_74

    .line 1569
    :cond_32
    instance-of v1, v0, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v1, :cond_4a

    .line 1571
    check-cast v0, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1572
    invoke-interface {v0}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    if-nez v1, :cond_46

    .line 1576
    new-instance v1, Ljxl/CellFeatures;

    invoke-direct {v1}, Ljxl/CellFeatures;-><init>()V

    .line 1577
    invoke-interface {v0, v1}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1580
    :cond_46
    invoke-virtual {v1, p5}, Ljxl/biff/BaseCellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_74

    .line 1584
    :cond_4a
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to add comment to cell type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_77
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7a
    return-void
.end method

.method private addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z
    .registers 5

    .line 1228
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1b

    if-nez v2, :cond_1b

    .line 1230
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/SharedFormulaRecord;

    .line 1231
    invoke-virtual {v2, p1}, Ljxl/read/biff/SharedFormulaRecord;->add(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    return v2
.end method

.method private handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V
    .registers 14

    if-nez p2, :cond_a

    .line 1605
    sget-object p1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string p2, "Object record is not associated with a drawing  record - ignoring"

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 1613
    :try_start_b
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_36

    .line 1615
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_1e

    .line 1617
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1620
    :cond_1e
    new-instance p3, Ljxl/biff/drawing/Drawing;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v5

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/Drawing;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/Sheet;)V

    .line 1625
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1630
    :cond_36
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_d1

    .line 1632
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_4a

    .line 1634
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1637
    :cond_4a
    new-instance v1, Ljxl/biff/drawing/Comment;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1645
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1646
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v2, :cond_72

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_80

    .line 1648
    :cond_72
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1649
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1650
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1652
    :cond_80
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v2, :cond_8a

    const/4 p2, 0x1

    goto :goto_8b

    :cond_8a
    const/4 p2, 0x0

    :goto_8b
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1653
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1654
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1656
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1657
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_a5

    const/4 v3, 0x1

    :cond_a5
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1658
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1659
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1661
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1662
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    if-ne p2, v2, :cond_c4

    .line 1664
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1665
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1668
    :cond_c4
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/Comment;->getObjectId()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1673
    :cond_d1
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_fc

    .line 1675
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_e4

    .line 1677
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1680
    :cond_e4
    new-instance p3, Ljxl/biff/drawing/ComboBox;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v5

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1685
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1690
    :cond_fc
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_1ab

    .line 1692
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_10f

    .line 1694
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1697
    :cond_10f
    new-instance p3, Ljxl/biff/drawing/CheckBox;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/CheckBox;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1703
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1704
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v1, :cond_13a

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_138

    goto :goto_13a

    :cond_138
    const/4 p2, 0x0

    goto :goto_13b

    :cond_13a
    :goto_13a
    const/4 p2, 0x1

    :goto_13b
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1706
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    if-eq p2, v1, :cond_14c

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_15a

    .line 1708
    :cond_14c
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1709
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1710
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1713
    :cond_15a
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v1, :cond_164

    const/4 p2, 0x1

    goto :goto_165

    :cond_164
    const/4 p2, 0x0

    :goto_165
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1714
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1715
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1717
    invoke-virtual {p2}, Ljxl/biff/drawing/TextObjectRecord;->getTextLength()I

    move-result p1

    if-nez p1, :cond_177

    return-void

    .line 1722
    :cond_177
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1723
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_186

    const/4 v3, 0x1

    :cond_186
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1724
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1725
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1727
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1728
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    if-ne p2, v1, :cond_1a5

    .line 1730
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1731
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/CheckBox;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1734
    :cond_1a5
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1740
    :cond_1ab
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_253

    .line 1742
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_1be

    .line 1744
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1747
    :cond_1be
    new-instance p3, Ljxl/biff/drawing/Button;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1753
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1754
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq p2, v1, :cond_1e9

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_1e7

    goto :goto_1e9

    :cond_1e7
    const/4 p2, 0x0

    goto :goto_1ea

    :cond_1e9
    :goto_1e9
    const/4 p2, 0x1

    :goto_1ea
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1756
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    if-eq p2, v1, :cond_1fb

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_209

    .line 1759
    :cond_1fb
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1760
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1761
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1764
    :cond_209
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v1, :cond_213

    const/4 p2, 0x1

    goto :goto_214

    :cond_213
    const/4 p2, 0x0

    :goto_214
    invoke-static {p2}, Ljxl/common/Assert;->verify(Z)V

    .line 1765
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1766
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1768
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1769
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_22e

    const/4 v3, 0x1

    :cond_22e
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1770
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1771
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1773
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1774
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    if-ne p2, v1, :cond_24d

    .line 1776
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1777
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1780
    :cond_24d
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1786
    :cond_253
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;
    :try_end_259
    .catch Ljxl/biff/drawing/DrawingDataException; {:try_start_b .. :try_end_259} :catch_346

    const-string v2, "\" not supported - omitting"

    const-string v4, " Object on sheet \""

    if-ne p3, v1, :cond_2f4

    .line 1788
    :try_start_25f
    sget-object p3, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v4}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1793
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_28e

    .line 1795
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1798
    :cond_28e
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 1800
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p3}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    .line 1801
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v1, v2, :cond_2b0

    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v4, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v4, :cond_2ae

    goto :goto_2b0

    :cond_2ae
    const/4 v1, 0x0

    goto :goto_2b1

    :cond_2b0
    :goto_2b0
    const/4 v1, 0x1

    :goto_2b1
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 1803
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    if-eq v1, v2, :cond_2c2

    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_2d6

    .line 1806
    :cond_2c2
    new-instance v1, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v1, p3}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1807
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v1}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 1808
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p3}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    .line 1811
    :cond_2d6
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p3

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p3, v1, :cond_2df

    const/4 v3, 0x1

    :cond_2df
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1813
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    if-eqz p3, :cond_2f3

    .line 1815
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V

    :cond_2f3
    return-void

    .line 1823
    :cond_2f4
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq p3, v1, :cond_366

    .line 1825
    sget-object p3, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1830
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_32b

    .line 1832
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1835
    :cond_32b
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 1837
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    if-eqz p3, :cond_345

    .line 1839
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V
    :try_end_345
    .catch Ljxl/biff/drawing/DrawingDataException; {:try_start_25f .. :try_end_345} :catch_346

    :cond_345
    return-void

    :catch_346
    move-exception p1

    .line 1848
    sget-object p2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "...disabling drawings for the remainder of the workbook"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1850
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/WorkbookSettings;->setDrawingsDisabled(Z)V

    :cond_366
    return-void
.end method

.method private handleOutOfBoundsCells()V
    .registers 8

    .line 1868
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1869
    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1872
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1874
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/Cell;

    .line 1875
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1876
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_a

    .line 1885
    :cond_2b
    iget v2, p0, Ljxl/read/biff/SheetReader;->numCols:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_46

    const/4 v2, 0x0

    .line 1887
    :goto_31
    iget v4, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v2, v4, :cond_46

    .line 1889
    new-array v4, v1, [Ljxl/Cell;

    .line 1890
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v5, v5, v2

    .line 1891
    array-length v6, v5

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1892
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1897
    :cond_46
    iget v2, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-le v0, v2, :cond_5f

    .line 1899
    new-array v2, v0, [[Ljxl/Cell;

    .line 1900
    iget-object v4, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v5, v4

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1901
    iput-object v2, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    .line 1904
    iget v3, p0, Ljxl/read/biff/SheetReader;->numRows:I

    :goto_56
    if-ge v3, v0, :cond_5f

    .line 1906
    new-array v4, v1, [Ljxl/Cell;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 1910
    :cond_5f
    iput v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1911
    iput v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1914
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1916
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/Cell;

    .line 1917
    invoke-direct {p0, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_69

    .line 1920
    :cond_79
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;
    .registers 14

    .line 1250
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    .line 1251
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getFilePos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/File;->setPos(I)V

    .line 1253
    new-instance v1, Ljxl/read/biff/FormulaRecord;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v4

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v8, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    sget-object v9, Ljxl/read/biff/FormulaRecord;->ignoreSharedFormula:Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;

    iget-object v10, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v11, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v3, v1

    move-object v7, v8

    invoke-direct/range {v3 .. v11}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    .line 1264
    :try_start_26
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object p1

    .line 1267
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    invoke-interface {v2}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v2, v3, :cond_58

    .line 1269
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljxl/read/biff/NumberFormulaRecord;

    .line 1270
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1272
    new-instance p1, Ljxl/read/biff/DateFormulaRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v8, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v3, p1

    move-object v6, v7

    invoke-direct/range {v3 .. v9}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    .line 1281
    :cond_58
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v2, v0}, Ljxl/read/biff/File;->setPos(I)V
    :try_end_5d
    .catch Ljxl/biff/formula/FormulaException; {:try_start_26 .. :try_end_5d} :catch_5e

    return-object p1

    :catch_5e
    move-exception p1

    .line 1288
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljxl/read/biff/CellValue;->getColumn()I

    move-result v3

    invoke-virtual {v1}, Ljxl/read/biff/CellValue;->getRow()I

    move-result v1

    invoke-static {v3, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final getAutoFilter()Ljxl/biff/AutoFilter;
    .registers 2

    .line 1374
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method final getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .registers 2

    .line 1474
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method final getCells()[[Ljxl/Cell;
    .registers 2

    .line 1324
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    return-object v0
.end method

.method final getCharts()Ljava/util/ArrayList;
    .registers 2

    .line 1384
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getColumnBreaks()[I
    .registers 2

    .line 1444
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    return-object v0
.end method

.method final getColumnInfosArray()Ljava/util/ArrayList;
    .registers 2

    .line 1344
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getConditionalFormats()Ljava/util/ArrayList;
    .registers 2

    .line 1364
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getDataValidation()Ljxl/biff/DataValidation;
    .registers 2

    .line 1404
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method final getDrawings()Ljava/util/ArrayList;
    .registers 2

    .line 1394
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getHyperlinks()Ljava/util/ArrayList;
    .registers 2

    .line 1354
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .registers 2

    .line 1930
    iget v0, p0, Ljxl/read/biff/SheetReader;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .registers 2

    .line 1940
    iget v0, p0, Ljxl/read/biff/SheetReader;->maxRowOutlineLevel:I

    return v0
.end method

.method final getMergedCells()[Ljxl/Range;
    .registers 2

    .line 1414
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    return-object v0
.end method

.method final getNumCols()I
    .registers 2

    .line 1314
    iget v0, p0, Ljxl/read/biff/SheetReader;->numCols:I

    return v0
.end method

.method final getNumRows()I
    .registers 2

    .line 1304
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    return v0
.end method

.method final getPLS()Ljxl/read/biff/PLSRecord;
    .registers 2

    .line 1464
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    return-object v0
.end method

.method final getRowBreaks()[I
    .registers 2

    .line 1434
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    return-object v0
.end method

.method final getRowProperties()Ljava/util/ArrayList;
    .registers 2

    .line 1334
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getSettings()Ljxl/SheetSettings;
    .registers 2

    .line 1424
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method final getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .registers 2

    .line 1454
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method final read()V
    .registers 32

    move-object/from16 v9, p0

    .line 340
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget v1, v9, Ljxl/read/biff/SheetReader;->startPosition:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/File;->setPos(I)V

    .line 365
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 368
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    :goto_24
    if-eqz v15, :cond_aa7

    .line 375
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    .line 378
    sget-object v2, Ljxl/biff/Type;->UNKNOWN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_5d

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v2

    if-nez v2, :cond_5d

    .line 380
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v14, "Biff code zero found"

    invoke-virtual {v2, v14}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v2

    const/16 v14, 0xa

    if-ne v2, v14, :cond_56

    .line 385
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v14, "Biff code zero found - trying a dimension record."

    invoke-virtual {v2, v14}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 386
    sget-object v2, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    invoke-virtual {v0, v2}, Ljxl/read/biff/Record;->setType(Ljxl/biff/Type;)V

    goto :goto_5d

    .line 390
    :cond_56
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v14, "Biff code zero found - Ignoring."

    invoke-virtual {v2, v14}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 394
    :cond_5d
    :goto_5d
    sget-object v2, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    if-ne v1, v2, :cond_96

    .line 398
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 400
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_76

    .line 404
    :cond_6f
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    sget-object v2, Ljxl/read/biff/DimensionRecord;->biff7:Ljxl/read/biff/DimensionRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/DimensionRecord$Biff7;)V

    .line 406
    :goto_76
    invoke-virtual {v1}, Ljxl/read/biff/DimensionRecord;->getNumberOfRows()I

    move-result v0

    iput v0, v9, Ljxl/read/biff/SheetReader;->numRows:I

    .line 407
    invoke-virtual {v1}, Ljxl/read/biff/DimensionRecord;->getNumberOfColumns()I

    move-result v0

    iput v0, v9, Ljxl/read/biff/SheetReader;->numCols:I

    .line 408
    iget v1, v9, Ljxl/read/biff/SheetReader;->numRows:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v12

    aput v1, v2, v13

    const-class v0, Ljxl/Cell;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljxl/Cell;

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    goto :goto_a8

    .line 410
    :cond_96
    sget-object v2, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    if-ne v1, v2, :cond_b4

    .line 412
    new-instance v1, Ljxl/read/biff/LabelSSTRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v14, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v14, v12}, Ljxl/read/biff/LabelSSTRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 416
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_a8
    :goto_a8
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v28, v15

    move-object v15, v3

    :goto_b0
    move-object v10, v4

    move-object v11, v6

    goto/16 :goto_a99

    .line 418
    :cond_b4
    sget-object v2, Ljxl/biff/Type;->RK:Ljxl/biff/Type;

    if-eq v1, v2, :cond_a5a

    sget-object v2, Ljxl/biff/Type;->RK2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_be

    goto/16 :goto_a5a

    .line 433
    :cond_be
    sget-object v2, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_d1

    .line 435
    new-instance v1, Ljxl/read/biff/HyperlinkRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v12}, Ljxl/read/biff/HyperlinkRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;Ljxl/WorkbookSettings;)V

    .line 436
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 438
    :cond_d1
    sget-object v2, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_108

    .line 440
    new-instance v1, Ljxl/read/biff/MergedCellsRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/MergedCellsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;)V

    .line 441
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    if-nez v0, :cond_e7

    .line 443
    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    goto :goto_a8

    .line 447
    :cond_e7
    array-length v0, v0

    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [Ljxl/Range;

    .line 449
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v12, v2

    invoke-static {v2, v13, v0, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v12, v12

    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v1

    array-length v1, v1

    invoke-static {v2, v13, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iput-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    goto :goto_a8

    .line 458
    :cond_108
    sget-object v2, Ljxl/biff/Type;->MULRK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_182

    .line 460
    new-instance v1, Ljxl/read/biff/MulRKRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/MulRKRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 463
    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getNumberOfColumns()I

    move-result v0

    const/4 v2, 0x0

    :goto_116
    if-ge v2, v0, :cond_a8

    .line 467
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulRKRecord;->getXFIndex(I)I

    move-result v12

    .line 469
    new-instance v14, Ljxl/read/biff/NumberValue;

    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getRow()I

    move-result v18

    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getFirstColumn()I

    move-result v17

    add-int v19, v17, v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/MulRKRecord;->getRKNumber(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljxl/read/biff/RKHelper;->getDouble(I)D

    move-result-wide v20

    iget-object v13, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move/from16 v28, v0

    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v14

    move/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v0

    invoke-direct/range {v17 .. v24}, Ljxl/read/biff/NumberValue;-><init>(IIDILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 478
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, v12}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 480
    new-instance v0, Ljxl/read/biff/DateRecord;

    iget-object v13, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move-object/from16 v23, v1

    iget-boolean v1, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    move-object/from16 v24, v3

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    move/from16 v19, v12

    move-object/from16 v20, v13

    move/from16 v21, v1

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 485
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_178

    :cond_168
    move-object/from16 v23, v1

    move-object/from16 v24, v3

    .line 489
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, v12}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljxl/read/biff/NumberValue;->setNumberFormat(Ljava/text/NumberFormat;)V

    .line 490
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :goto_178
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v23

    move-object/from16 v3, v24

    move/from16 v0, v28

    const/4 v13, 0x0

    goto :goto_116

    :cond_182
    move-object/from16 v24, v3

    .line 494
    sget-object v2, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1be

    .line 496
    new-instance v1, Ljxl/read/biff/NumberRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/NumberRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 498
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 500
    new-instance v0, Ljxl/read/biff/DateRecord;

    invoke-virtual {v1}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result v19

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v3, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v12

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 504
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_1f8

    .line 508
    :cond_1ba
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_1f8

    .line 511
    :cond_1be
    sget-object v2, Ljxl/biff/Type;->BOOLERR:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1e6

    .line 513
    new-instance v1, Ljxl/read/biff/BooleanRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/BooleanRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 515
    invoke-virtual {v1}, Ljxl/read/biff/BooleanRecord;->isError()Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 517
    new-instance v0, Ljxl/read/biff/ErrorRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BooleanRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v1, v2, v3}, Ljxl/read/biff/ErrorRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 519
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_1f8

    .line 523
    :cond_1e2
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_1f8

    .line 526
    :cond_1e6
    sget-object v2, Ljxl/biff/Type;->PRINTGRIDLINES:Ljxl/biff/Type;

    if-ne v1, v2, :cond_203

    .line 528
    new-instance v1, Ljxl/read/biff/PrintGridLinesRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PrintGridLinesRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 529
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PrintGridLinesRecord;->getPrintGridLines()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPrintGridLines(Z)V

    :cond_1f8
    :goto_1f8
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v28, v15

    move-object/from16 v15, v24

    goto/16 :goto_b0

    .line 531
    :cond_203
    sget-object v2, Ljxl/biff/Type;->PRINTHEADERS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_216

    .line 533
    new-instance v1, Ljxl/read/biff/PrintHeadersRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PrintHeadersRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 534
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PrintHeadersRecord;->getPrintHeaders()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPrintHeaders(Z)V

    goto :goto_1f8

    .line 536
    :cond_216
    sget-object v2, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_253

    .line 540
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_228

    .line 542
    new-instance v1, Ljxl/read/biff/Window2Record;

    invoke-direct {v1, v0}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_22f

    .line 546
    :cond_228
    new-instance v1, Ljxl/read/biff/Window2Record;

    sget-object v2, Ljxl/read/biff/Window2Record;->biff7:Ljxl/read/biff/Window2Record$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/Window2Record$Biff7;)V

    :goto_22f
    move-object/from16 v25, v1

    .line 549
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->getShowGridLines()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setShowGridLines(Z)V

    .line 550
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->getDisplayZeroValues()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDisplayZeroValues(Z)V

    .line 551
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setSelected(Z)V

    .line 552
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->isPageBreakPreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPageBreakPreviewMode(Z)V

    goto :goto_282

    .line 554
    :cond_253
    sget-object v2, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_277

    .line 556
    new-instance v1, Ljxl/read/biff/PaneRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PaneRecord;-><init>(Ljxl/read/biff/Record;)V

    if-eqz v25, :cond_1f8

    .line 558
    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->getFrozen()Z

    move-result v0

    if-eqz v0, :cond_1f8

    .line 561
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PaneRecord;->getRowsVisible()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalFreeze(I)V

    .line 562
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PaneRecord;->getColumnsVisible()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setHorizontalFreeze(I)V

    goto :goto_1f8

    .line 565
    :cond_277
    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_289

    .line 568
    new-instance v1, Ljxl/biff/ContinueRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object/from16 v26, v1

    :goto_282
    move-object v14, v7

    move-object v2, v10

    move-object v7, v11

    move-object/from16 v3, v24

    goto/16 :goto_aa0

    .line 570
    :cond_289
    sget-object v2, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_311

    .line 572
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_2fe

    .line 574
    new-instance v1, Ljxl/biff/drawing/NoteRecord;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/NoteRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 577
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/drawing/Comment;

    if-nez v0, :cond_2cb

    .line 582
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cannot find comment for note id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "...ignoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2fe

    .line 587
    :cond_2cb
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/Comment;->setNote(Ljxl/biff/drawing/NoteRecord;)V

    .line 589
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v2

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getWidth()D

    move-result-wide v13

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getHeight()D

    move-result-wide v17

    move-object/from16 v1, p0

    move/from16 v28, v15

    move-object/from16 v15, v24

    move-object/from16 v29, v10

    move-object v10, v4

    move-object v4, v12

    move-object v12, v5

    move-object/from16 v30, v11

    move-object v11, v6

    move-wide v5, v13

    move-object v14, v7

    move-object v13, v8

    move-wide/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SheetReader;->addCellComment(IILjava/lang/String;DD)V

    goto :goto_30b

    :cond_2fe
    :goto_2fe
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v28, v15

    move-object/from16 v15, v24

    move-object v10, v4

    move-object v11, v6

    :cond_30b
    :goto_30b
    move-object/from16 v2, v29

    move-object/from16 v7, v30

    goto/16 :goto_a99

    :cond_311
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v28, v15

    move-object/from16 v15, v24

    move-object v10, v4

    move-object v11, v6

    .line 599
    sget-object v2, Ljxl/biff/Type;->ARRAY:Ljxl/biff/Type;

    if-ne v1, v2, :cond_323

    :goto_322
    goto :goto_30b

    .line 603
    :cond_323
    sget-object v2, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_336

    .line 605
    new-instance v1, Ljxl/read/biff/ProtectRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ProtectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 606
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/ProtectRecord;->isProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setProtected(Z)V

    goto :goto_30b

    .line 608
    :cond_336
    sget-object v2, Ljxl/biff/Type;->SHAREDFORMULA:Ljxl/biff/Type;

    if-ne v1, v2, :cond_382

    if-nez v14, :cond_35a

    .line 612
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v2, "Shared template formula is null - trying most recent formula template"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 614
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SharedFormulaRecord;

    if-eqz v1, :cond_35a

    .line 619
    invoke-virtual {v1}, Ljxl/read/biff/SharedFormulaRecord;->getTemplateFormula()Ljxl/read/biff/BaseSharedFormulaRecord;

    move-result-object v7

    move-object/from16 v19, v7

    goto :goto_35c

    :cond_35a
    move-object/from16 v19, v14

    .line 623
    :goto_35c
    new-instance v1, Ljxl/read/biff/SharedFormulaRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/SharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/BaseSharedFormulaRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    .line 625
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    move/from16 v15, v28

    move-object/from16 v2, v29

    move-object/from16 v7, v30

    const/4 v14, 0x0

    goto/16 :goto_aa0

    .line 628
    :cond_382
    sget-object v2, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    if-eq v1, v2, :cond_9a8

    sget-object v2, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_38c

    goto/16 :goto_9a8

    .line 695
    :cond_38c
    sget-object v2, Ljxl/biff/Type;->LABEL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3c0

    .line 699
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_3a4

    .line 701
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    goto :goto_3bb

    .line 705
    :cond_3a4
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v22, Ljxl/read/biff/LabelRecord;->biff7:Ljxl/read/biff/LabelRecord$Biff7;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/LabelRecord$Biff7;)V

    .line 708
    :goto_3bb
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_30b

    .line 710
    :cond_3c0
    sget-object v2, Ljxl/biff/Type;->RSTRING:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3eb

    .line 715
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 716
    new-instance v1, Ljxl/read/biff/RStringRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v22, Ljxl/read/biff/RStringRecord;->biff7:Ljxl/read/biff/RStringRecord$Biff7;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/RStringRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/RStringRecord$Biff7;)V

    .line 719
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_30b

    .line 721
    :cond_3eb
    sget-object v2, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3f1

    goto/16 :goto_322

    .line 725
    :cond_3f1
    sget-object v2, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    if-ne v1, v2, :cond_405

    .line 727
    new-instance v1, Ljxl/read/biff/PasswordRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PasswordRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 728
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PasswordRecord;->getPasswordHash()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPasswordHash(I)V

    goto/16 :goto_30b

    .line 730
    :cond_405
    sget-object v2, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    if-ne v1, v2, :cond_433

    .line 732
    new-instance v1, Ljxl/read/biff/RowRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/RowRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 735
    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->isDefaultHeight()Z

    move-result v0

    if-eqz v0, :cond_42c

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v0

    if-eqz v0, :cond_42c

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_42c

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v0

    if-nez v0, :cond_42c

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->getOutlineLevel()I

    move-result v0

    if-eqz v0, :cond_30b

    .line 741
    :cond_42c
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30b

    .line 744
    :cond_433
    sget-object v2, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_44d

    .line 746
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v1

    if-nez v1, :cond_30b

    .line 748
    new-instance v1, Ljxl/read/biff/BlankCell;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/BlankCell;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 749
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_30b

    .line 752
    :cond_44d
    sget-object v2, Ljxl/biff/Type;->MULBLANK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_48c

    .line 754
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v1

    if-nez v1, :cond_30b

    .line 756
    new-instance v1, Ljxl/read/biff/MulBlankRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/MulBlankRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 759
    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getNumberOfColumns()I

    move-result v0

    const/4 v2, 0x0

    :goto_463
    if-ge v2, v0, :cond_30b

    .line 763
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulBlankRecord;->getXFIndex(I)I

    move-result v6

    .line 765
    new-instance v8, Ljxl/read/biff/MulBlankCell;

    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getRow()I

    move-result v4

    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getFirstColumn()I

    move-result v3

    add-int v5, v3, v2

    iget-object v7, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v3

    move-object v3, v8

    move/from16 v18, v0

    move-object v0, v8

    move-object/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 772
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v18

    goto :goto_463

    .line 776
    :cond_48c
    sget-object v2, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4a0

    .line 778
    new-instance v1, Ljxl/read/biff/SCLRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SCLRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 779
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SCLRecord;->getZoomFactor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setZoomFactor(I)V

    goto/16 :goto_30b

    .line 781
    :cond_4a0
    sget-object v2, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4b0

    .line 783
    new-instance v1, Ljxl/read/biff/ColumnInfoRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 784
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30b

    .line 786
    :cond_4b0
    sget-object v2, Ljxl/biff/Type;->HEADER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4dd

    .line 789
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_4c4

    .line 791
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_4cd

    .line 795
    :cond_4c4
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/HeaderRecord;->biff7:Ljxl/read/biff/HeaderRecord$Biff7;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/HeaderRecord$Biff7;)V

    .line 798
    :goto_4cd
    new-instance v0, Ljxl/HeaderFooter;

    invoke-virtual {v1}, Ljxl/read/biff/HeaderRecord;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 799
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    goto/16 :goto_30b

    .line 801
    :cond_4dd
    sget-object v2, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_50a

    .line 804
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_4f1

    .line 806
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_4fa

    .line 810
    :cond_4f1
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/FooterRecord;->biff7:Ljxl/read/biff/FooterRecord$Biff7;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/FooterRecord$Biff7;)V

    .line 813
    :goto_4fa
    new-instance v0, Ljxl/HeaderFooter;

    invoke-virtual {v1}, Ljxl/read/biff/FooterRecord;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 814
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    goto/16 :goto_30b

    .line 816
    :cond_50a
    sget-object v2, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    if-ne v1, v2, :cond_5b0

    .line 818
    new-instance v1, Ljxl/read/biff/SetupRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SetupRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 822
    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_30b

    .line 824
    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_527

    .line 826
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    goto :goto_52e

    .line 830
    :cond_527
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 832
    :goto_52e
    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->isRightDown()Z

    move-result v0

    if-eqz v0, :cond_53c

    .line 834
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrder;->RIGHT_THEN_DOWN:Ljxl/format/PageOrder;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    goto :goto_543

    .line 838
    :cond_53c
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrder;->DOWN_THEN_RIGHT:Ljxl/format/PageOrder;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    .line 840
    :goto_543
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getPaperSize()I

    move-result v2

    invoke-static {v2}, Ljxl/format/PaperSize;->getPaperSize(I)Ljxl/format/PaperSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 841
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getHeaderMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 842
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFooterMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljxl/SheetSettings;->setFooterMargin(D)V

    .line 843
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getScaleFactor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setScaleFactor(I)V

    .line 844
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getPageStart()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageStart(I)V

    .line 845
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFitWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setFitWidth(I)V

    .line 846
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFitHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setFitHeight(I)V

    .line 847
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getHorizontalPrintResolution()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setHorizontalPrintResolution(I)V

    .line 849
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getVerticalPrintResolution()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalPrintResolution(I)V

    .line 850
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getCopies()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setCopies(I)V

    .line 852
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    if-eqz v0, :cond_30b

    .line 854
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/biff/WorkspaceInformationRecord;->getFitToPages()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setFitToPages(Z)V

    goto/16 :goto_30b

    .line 858
    :cond_5b0
    sget-object v2, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_5bd

    .line 860
    new-instance v1, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {v1, v0}, Ljxl/biff/WorkspaceInformationRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    goto/16 :goto_30b

    .line 862
    :cond_5bd
    sget-object v2, Ljxl/biff/Type;->DEFCOLWIDTH:Ljxl/biff/Type;

    if-ne v1, v2, :cond_5d1

    .line 864
    new-instance v1, Ljxl/read/biff/DefaultColumnWidthRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DefaultColumnWidthRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 865
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/DefaultColumnWidthRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDefaultColumnWidth(I)V

    goto/16 :goto_30b

    .line 867
    :cond_5d1
    sget-object v2, Ljxl/biff/Type;->DEFAULTROWHEIGHT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_5eb

    .line 869
    new-instance v1, Ljxl/read/biff/DefaultRowHeightRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DefaultRowHeightRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 870
    invoke-virtual {v1}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v0

    if-eqz v0, :cond_30b

    .line 872
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDefaultRowHeight(I)V

    goto/16 :goto_30b

    .line 875
    :cond_5eb
    sget-object v2, Ljxl/biff/Type;->CONDFMT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_60a

    .line 877
    new-instance v1, Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ConditionalFormatRangeRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 879
    new-instance v6, Ljxl/biff/ConditionalFormat;

    invoke-direct {v6, v1}, Ljxl/biff/ConditionalFormat;-><init>(Ljxl/biff/ConditionalFormatRangeRecord;)V

    .line 880
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    :goto_5ff
    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    :goto_602
    move/from16 v15, v28

    move-object/from16 v2, v29

    move-object/from16 v7, v30

    goto/16 :goto_aa0

    .line 882
    :cond_60a
    sget-object v2, Ljxl/biff/Type;->CF:Ljxl/biff/Type;

    if-ne v1, v2, :cond_618

    .line 884
    new-instance v1, Ljxl/biff/ConditionalFormatRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ConditionalFormatRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 885
    invoke-virtual {v11, v1}, Ljxl/biff/ConditionalFormat;->addCondition(Ljxl/biff/ConditionalFormatRecord;)V

    goto/16 :goto_30b

    .line 887
    :cond_618
    sget-object v2, Ljxl/biff/Type;->FILTERMODE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_623

    .line 889
    new-instance v4, Ljxl/biff/FilterModeRecord;

    invoke-direct {v4, v0}, Ljxl/biff/FilterModeRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v6, v11

    goto :goto_5ff

    .line 891
    :cond_623
    sget-object v2, Ljxl/biff/Type;->AUTOFILTERINFO:Ljxl/biff/Type;

    if-ne v1, v2, :cond_631

    .line 893
    new-instance v3, Ljxl/biff/AutoFilterInfoRecord;

    invoke-direct {v3, v0}, Ljxl/biff/AutoFilterInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v4, v10

    :goto_62d
    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    goto :goto_602

    .line 895
    :cond_631
    sget-object v2, Ljxl/biff/Type;->AUTOFILTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_658

    .line 897
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getAutoFilterDisabled()Z

    move-result v1

    if-nez v1, :cond_30b

    .line 899
    new-instance v1, Ljxl/biff/AutoFilterRecord;

    invoke-direct {v1, v0}, Ljxl/biff/AutoFilterRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 901
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    if-nez v0, :cond_650

    .line 903
    new-instance v0, Ljxl/biff/AutoFilter;

    invoke-direct {v0, v10, v15}, Ljxl/biff/AutoFilter;-><init>(Ljxl/biff/FilterModeRecord;Ljxl/biff/AutoFilterInfoRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_652

    :cond_650
    move-object v4, v10

    move-object v3, v15

    .line 908
    :goto_652
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    invoke-virtual {v0, v1}, Ljxl/biff/AutoFilter;->add(Ljxl/biff/AutoFilterRecord;)V

    goto :goto_62d

    .line 911
    :cond_658
    sget-object v2, Ljxl/biff/Type;->LEFTMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_66c

    .line 913
    new-instance v1, Ljxl/read/biff/LeftMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/LeftMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 914
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setLeftMargin(D)V

    goto/16 :goto_30b

    .line 916
    :cond_66c
    sget-object v2, Ljxl/biff/Type;->RIGHTMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_680

    .line 918
    new-instance v1, Ljxl/read/biff/RightMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/RightMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 919
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setRightMargin(D)V

    goto/16 :goto_30b

    .line 921
    :cond_680
    sget-object v2, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_694

    .line 923
    new-instance v1, Ljxl/read/biff/TopMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/TopMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 924
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setTopMargin(D)V

    goto/16 :goto_30b

    .line 926
    :cond_694
    sget-object v2, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_6a8

    .line 928
    new-instance v1, Ljxl/read/biff/BottomMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/BottomMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 929
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setBottomMargin(D)V

    goto/16 :goto_30b

    .line 931
    :cond_6a8
    sget-object v2, Ljxl/biff/Type;->HORIZONTALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_6c9

    .line 935
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_6ba

    .line 937
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_6c1

    .line 941
    :cond_6ba
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/HorizontalPageBreaksRecord;->biff7:Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;)V

    .line 944
    :goto_6c1
    invoke-virtual {v1}, Ljxl/read/biff/HorizontalPageBreaksRecord;->getRowBreaks()[I

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    goto/16 :goto_30b

    .line 946
    :cond_6c9
    sget-object v2, Ljxl/biff/Type;->VERTICALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_6ea

    .line 950
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_6db

    .line 952
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_6e2

    .line 956
    :cond_6db
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/VerticalPageBreaksRecord;->biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;)V

    .line 959
    :goto_6e2
    invoke-virtual {v1}, Ljxl/read/biff/VerticalPageBreaksRecord;->getColumnBreaks()[I

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    goto/16 :goto_30b

    .line 961
    :cond_6ea
    sget-object v2, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_70d

    .line 963
    new-instance v1, Ljxl/read/biff/PLSRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PLSRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    .line 966
    :goto_6f5
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_30b

    .line 968
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/read/biff/Record;->addContinueRecord(Ljxl/read/biff/Record;)V

    goto :goto_6f5

    .line 971
    :cond_70d
    sget-object v2, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_7a9

    .line 973
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v1

    if-nez v1, :cond_7a3

    .line 975
    new-instance v1, Ljxl/biff/DataValidityListRecord;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 976
    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_75b

    if-eqz v13, :cond_751

    if-nez v12, :cond_751

    .line 981
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v0, :cond_734

    .line 983
    new-instance v0, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v0}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 986
    :cond_734
    new-instance v0, Ljxl/biff/drawing/Drawing2;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v3

    invoke-direct {v0, v13, v2, v3}, Ljxl/biff/drawing/Drawing2;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;)V

    .line 988
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    move-object/from16 v7, v30

    const/4 v8, 0x0

    goto :goto_799

    .line 996
    :cond_751
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    move-object/from16 v7, v30

    goto :goto_798

    .line 999
    :cond_75b
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v7, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_774

    .line 1001
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    goto :goto_798

    .line 1005
    :cond_774
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " referenced "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by data validity list record not found - ignoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_798
    move-object v8, v13

    :goto_799
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v3, v15

    move/from16 v15, v28

    move-object/from16 v2, v29

    goto/16 :goto_aa0

    :cond_7a3
    move-object/from16 v7, v30

    :cond_7a5
    :goto_7a5
    move-object/from16 v2, v29

    goto/16 :goto_a99

    :cond_7a9
    move-object/from16 v7, v30

    .line 1010
    sget-object v2, Ljxl/biff/Type;->HCENTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_7be

    .line 1012
    new-instance v1, Ljxl/read/biff/CentreRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1013
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setHorizontalCentre(Z)V

    goto :goto_7a5

    .line 1015
    :cond_7be
    sget-object v2, Ljxl/biff/Type;->VCENTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_7d1

    .line 1017
    new-instance v1, Ljxl/read/biff/CentreRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1018
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setVerticalCentre(Z)V

    goto :goto_7a5

    .line 1020
    :cond_7d1
    sget-object v2, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    if-ne v1, v2, :cond_80d

    .line 1022
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v1

    if-nez v1, :cond_7a5

    .line 1024
    new-instance v6, Ljxl/biff/DataValiditySettingsRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v2

    invoke-direct {v6, v0, v1, v1, v2}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 1029
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_805

    .line 1031
    invoke-virtual {v0, v6}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1032
    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v3

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v4

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/SheetReader;->addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V

    goto :goto_7a5

    .line 1040
    :cond_805
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "cannot add data validity settings"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_7a5

    .line 1044
    :cond_80d
    sget-object v2, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    if-ne v1, v2, :cond_862

    .line 1046
    new-instance v5, Ljxl/biff/drawing/ObjRecord;

    invoke-direct {v5, v0}, Ljxl/biff/drawing/ObjRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1048
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    if-nez v0, :cond_84a

    if-nez v13, :cond_837

    if-eqz v26, :cond_837

    .line 1055
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot find drawing record - using continue record"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1056
    new-instance v8, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual/range {v26 .. v26}, Ljxl/biff/ContinueRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-direct {v8, v0}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object/from16 v2, v29

    const/16 v26, 0x0

    goto :goto_83a

    :cond_837
    move-object v8, v13

    move-object/from16 v2, v29

    .line 1059
    :goto_83a
    invoke-direct {v9, v5, v8, v2}, Ljxl/read/biff/SheetReader;->handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V

    .line 1060
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84d

    :cond_84a
    move-object/from16 v2, v29

    move-object v8, v13

    .line 1064
    :goto_84d
    invoke-virtual {v5}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v0

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v0, v1, :cond_85e

    move-object v4, v10

    move-object v6, v11

    move-object v3, v15

    move/from16 v15, v28

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto/16 :goto_aa0

    :cond_85e
    :goto_85e
    move-object v4, v10

    move-object v6, v11

    goto/16 :goto_a9d

    :cond_862
    move-object/from16 v2, v29

    .line 1070
    sget-object v3, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-ne v1, v3, :cond_894

    .line 1072
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_a99

    if-eqz v13, :cond_87b

    .line 1078
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v13}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 1080
    :cond_87b
    new-instance v8, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v8, v0}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    if-eqz v27, :cond_88f

    .line 1084
    invoke-virtual {v8}, Ljxl/biff/drawing/MsoDrawingRecord;->setFirst()V

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v3, v15

    move/from16 v15, v28

    const/16 v27, 0x0

    goto/16 :goto_aa0

    :cond_88f
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    goto/16 :goto_a9d

    .line 1089
    :cond_894
    sget-object v3, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    if-ne v1, v3, :cond_8a1

    .line 1091
    new-instance v1, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    goto/16 :goto_a99

    .line 1093
    :cond_8a1
    sget-object v3, Ljxl/biff/Type;->CALCMODE:Ljxl/biff/Type;

    if-ne v1, v3, :cond_8b5

    .line 1095
    new-instance v1, Ljxl/read/biff/CalcModeRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CalcModeRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1096
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CalcModeRecord;->isAutomatic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setAutomaticFormulaCalculation(Z)V

    goto/16 :goto_a99

    .line 1098
    :cond_8b5
    sget-object v3, Ljxl/biff/Type;->SAVERECALC:Ljxl/biff/Type;

    if-ne v1, v3, :cond_8c9

    .line 1100
    new-instance v1, Ljxl/read/biff/SaveRecalcRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SaveRecalcRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1101
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SaveRecalcRecord;->getRecalculateOnSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setRecalculateFormulasBeforeSave(Z)V

    goto/16 :goto_a99

    .line 1103
    :cond_8c9
    sget-object v3, Ljxl/biff/Type;->GUTS:Ljxl/biff/Type;

    if-ne v1, v3, :cond_8f4

    .line 1105
    new-instance v1, Ljxl/read/biff/GuttersRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/GuttersRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1106
    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v0

    if-lez v0, :cond_8df

    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    goto :goto_8e1

    :cond_8df
    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_8e1
    iput v0, v9, Ljxl/read/biff/SheetReader;->maxRowOutlineLevel:I

    .line 1108
    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getColumnOutlineLevel()I

    move-result v0

    if-lez v0, :cond_8ef

    invoke-virtual {v1}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v0

    sub-int/2addr v0, v3

    goto :goto_8f0

    :cond_8ef
    const/4 v0, 0x0

    :goto_8f0
    iput v0, v9, Ljxl/read/biff/SheetReader;->maxColumnOutlineLevel:I

    goto/16 :goto_a99

    .line 1111
    :cond_8f4
    sget-object v3, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v1, v3, :cond_99b

    .line 1113
    new-instance v1, Ljxl/read/biff/BOFRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1114
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1116
    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v3}, Ljxl/read/biff/File;->getPos()I

    move-result v3

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/lit8 v21, v3, -0x4

    .line 1120
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 1121
    :goto_919
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v0

    sget-object v3, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    iget v3, v3, Ljxl/biff/Type;->value:I

    if-eq v0, v3, :cond_92a

    .line 1123
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    goto :goto_919

    .line 1126
    :cond_92a
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_98d

    .line 1128
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-nez v0, :cond_944

    .line 1130
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "only biff8 charts are supported"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_98a

    .line 1134
    :cond_944
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v0, :cond_94f

    .line 1136
    new-instance v0, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v0}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1139
    :cond_94f
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    if-nez v0, :cond_98a

    .line 1141
    new-instance v0, Ljxl/biff/drawing/Chart;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v3}, Ljxl/read/biff/File;->getPos()I

    move-result v22

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    move-object/from16 v20, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    invoke-direct/range {v17 .. v24}, Ljxl/biff/drawing/Chart;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;IILjxl/read/biff/File;Ljxl/WorkbookSettings;)V

    .line 1144
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_98a

    .line 1148
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/Chart;)V

    :cond_98a
    :goto_98a
    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_98f

    :cond_98d
    move-object v5, v12

    move-object v8, v13

    .line 1160
    :goto_98f
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_85e

    const/16 v28, 0x0

    goto/16 :goto_85e

    :cond_99b
    const/4 v4, 0x1

    .line 1165
    sget-object v0, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v1, v0, :cond_a99

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    const/4 v15, 0x0

    goto/16 :goto_aa0

    :cond_9a8
    :goto_9a8
    move-object/from16 v2, v29

    move-object/from16 v7, v30

    const/4 v4, 0x1

    .line 630
    new-instance v1, Ljxl/read/biff/FormulaRecord;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v24}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    .line 638
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->isShared()Z

    move-result v0

    if-eqz v0, :cond_9eb

    .line 641
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 644
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v16

    if-eqz v16, :cond_9df

    move-object v0, v14

    :cond_9df
    if-nez v16, :cond_a58

    if-eqz v14, :cond_a58

    .line 660
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v1

    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_a58

    .line 665
    :cond_9eb
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v3

    .line 669
    :try_start_9ef
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v4, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v4, :cond_a29

    .line 671
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljxl/read/biff/NumberFormulaRecord;

    .line 672
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual/range {v18 .. v18}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_a29

    .line 674
    new-instance v0, Ljxl/read/biff/DateFormulaRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v5, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    invoke-direct/range {v17 .. v23}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    move-object v3, v0

    .line 683
    :cond_a29
    invoke-direct {v9, v3}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V
    :try_end_a2c
    .catch Ljxl/biff/formula/FormulaException; {:try_start_9ef .. :try_end_a2c} :catch_a2d

    goto :goto_a57

    :catch_a2d
    move-exception v0

    .line 689
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-static {v5, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_a57
    move-object v0, v14

    :cond_a58
    :goto_a58
    move-object v14, v0

    goto :goto_a99

    :cond_a5a
    :goto_a5a
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v28, v15

    move-object v15, v3

    move-object v10, v4

    move-object v11, v6

    .line 420
    new-instance v1, Ljxl/read/biff/RKRecord;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v3, v4}, Ljxl/read/biff/RKRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 422
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_a96

    .line 424
    new-instance v0, Ljxl/read/biff/DateRecord;

    invoke-virtual {v1}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result v19

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v4, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-direct/range {v17 .. v22}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 426
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_a99

    .line 430
    :cond_a96
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_a99
    :goto_a99
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    :goto_a9d
    move-object v3, v15

    move/from16 v15, v28

    :goto_aa0
    move-object v10, v2

    move-object v11, v7

    move-object v7, v14

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_24

    :cond_aa7
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    .line 1172
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->restorePos()V

    .line 1175
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_abb

    .line 1177
    invoke-direct/range {p0 .. p0}, Ljxl/read/biff/SheetReader;->handleOutOfBoundsCells()V

    .line 1181
    :cond_abb
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1183
    :cond_ac1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae1

    .line 1185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SharedFormulaRecord;

    .line 1187
    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v4, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    invoke-virtual {v1, v3, v4}, Ljxl/read/biff/SharedFormulaRecord;->getFormulas(Ljxl/biff/FormattingRecords;Z)[Ljxl/Cell;

    move-result-object v1

    const/4 v3, 0x0

    .line 1189
    :goto_ad6
    array-length v4, v1

    if-ge v3, v4, :cond_ac1

    .line 1191
    aget-object v4, v1, v3

    invoke-direct {v9, v4}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ad6

    :cond_ae1
    if-nez v16, :cond_aec

    if-eqz v14, :cond_aec

    .line 1199
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v0

    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_aec
    if-eqz v13, :cond_aff

    .line 1204
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v0

    if-eqz v0, :cond_aff

    .line 1206
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V

    .line 1210
    :cond_aff
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0c

    .line 1212
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Not all comments have a corresponding Note record"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_b0c
    return-void
.end method
