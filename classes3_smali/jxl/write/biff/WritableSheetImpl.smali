.class Ljxl/write/biff/WritableSheetImpl;
.super Ljava/lang/Object;
.source "WritableSheetImpl.java"

# interfaces
.implements Ljxl/write/WritableSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;
    }
.end annotation


# static fields
.field private static final illegalSheetNameCharacters:[C

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private autosizedColumns:Ljava/util/TreeSet;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private drawingsModified:Z

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private name:Ljava/lang/String;

.field private numColumns:I

.field private numRows:I

.field private outputFile:Ljxl/write/biff/File;

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private rows:[Ljxl/write/biff/RowRecord;

.field private settings:Ljxl/SheetSettings;

.field private sharedStrings:Ljxl/write/biff/SharedStrings;

.field private sheetWriter:Ljxl/write/biff/SheetWriter;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbook:Ljxl/write/biff/WritableWorkbookImpl;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const-class v0, Ljxl/write/biff/WritableSheetImpl;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 263
    fill-array-data v0, :array_12

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x2as
        0x3as
        0x3fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/write/biff/File;Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/WorkbookSettings;Ljxl/write/biff/WritableWorkbookImpl;)V
    .registers 7

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-direct {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->outputFile:Ljxl/write/biff/File;

    const/4 p1, 0x0

    new-array p2, p1, [Ljxl/write/biff/RowRecord;

    .line 330
    iput-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 331
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 332
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    .line 333
    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 334
    iput-object p6, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    .line 336
    iput-object p3, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    .line 337
    iput-object p4, p0, Ljxl/write/biff/WritableSheetImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 338
    iput-object p5, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    .line 339
    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 340
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;-><init>(Ljxl/write/biff/WritableSheetImpl$1;)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    .line 341
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 343
    new-instance p1, Ljxl/write/biff/MergedCells;

    invoke-direct {p1, p0}, Ljxl/write/biff/MergedCells;-><init>(Ljxl/write/WritableSheet;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 344
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 345
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 346
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    .line 347
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    .line 348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    .line 349
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    .line 350
    new-instance p1, Ljxl/SheetSettings;

    invoke-direct {p1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/Sheet;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 353
    new-instance p1, Ljxl/write/biff/SheetWriter;

    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->outputFile:Ljxl/write/biff/File;

    iget-object p3, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {p1, p2, p0, p3}, Ljxl/write/biff/SheetWriter;-><init>(Ljxl/write/biff/File;Ljxl/write/biff/WritableSheetImpl;Ljxl/WorkbookSettings;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    return-void
.end method

.method private autosizeColumn(I)V
    .registers 11

    .line 2642
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    .line 2643
    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v1

    .line 2644
    sget-object v2, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v2}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2646
    :goto_14
    iget v5, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v3, v5, :cond_5d

    const/4 v5, 0x0

    .line 2649
    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v7, v6, v3

    if-eqz v7, :cond_25

    .line 2651
    aget-object v5, v6, v3

    invoke-virtual {v5, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v5

    :cond_25
    if-eqz v5, :cond_5a

    .line 2656
    invoke-interface {v5}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    .line 2657
    invoke-interface {v5}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v5

    invoke-interface {v5}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v5

    .line 2659
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    move-object v5, v1

    .line 2661
    :cond_3a
    invoke-interface {v5}, Ljxl/format/Font;->getPointSize()I

    move-result v7

    .line 2662
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2664
    invoke-interface {v5}, Ljxl/format/Font;->isItalic()Z

    move-result v8

    if-nez v8, :cond_50

    invoke-interface {v5}, Ljxl/format/Font;->getBoldWeight()I

    move-result v5

    const/16 v8, 0x190

    if-le v5, v8, :cond_52

    :cond_50
    add-int/lit8 v6, v6, 0x2

    :cond_52
    mul-int v6, v6, v7

    mul-int/lit16 v6, v6, 0x100

    .line 2671
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2674
    :cond_5d
    invoke-interface {v2}, Ljxl/format/Font;->getPointSize()I

    move-result p1

    div-int/2addr v4, p1

    invoke-virtual {v0, v4}, Ljxl/write/biff/ColumnInfoRecord;->setWidth(I)V

    return-void
.end method

.method private autosizeColumns()V
    .registers 3

    .line 2626
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2627
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2629
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2630
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Ljxl/write/biff/WritableSheetImpl;->autosizeColumn(I)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private validateName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2474
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-le v0, v1, :cond_28

    .line 2476
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sheet name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " too long - truncating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 2477
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2480
    :cond_28
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_3c

    .line 2482
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Sheet naming cannot start with \' - removing"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2483
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2486
    :cond_3c
    :goto_3c
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    array-length v1, v0

    if-ge v2, v1, :cond_67

    .line 2488
    aget-char v1, v0, v2

    const/16 v3, 0x40

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    if-eq p1, v1, :cond_63

    .line 2491
    sget-object p1, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid character within a sheet name - replacing"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_63
    add-int/lit8 v2, v2, 0x1

    move-object p1, v1

    goto :goto_3c

    :cond_67
    return-object p1
.end method


# virtual methods
.method public addCell(Ljxl/write/WritableCell;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1133
    invoke-interface {p1}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v1, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v0, v1, :cond_f

    .line 1135
    invoke-interface {p1}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 1143
    :cond_f
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/CellValue;

    .line 1145
    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->isReferenced()Z

    move-result v1

    if-nez v1, :cond_e0

    .line 1150
    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    .line 1151
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v2

    .line 1153
    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4b

    .line 1154
    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v5

    if-eqz v5, :cond_4b

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v5

    if-eqz v5, :cond_4b

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    .line 1161
    :goto_4c
    invoke-interface {p1}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    if-eqz v6, :cond_a9

    invoke-interface {p1}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/biff/BaseCellFeatures;->hasDataValidation()Z

    move-result v6

    if-eqz v6, :cond_a9

    if-eqz v5, :cond_a9

    .line 1165
    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object p1

    .line 1166
    sget-object v1, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add cell at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is part of the shared cell validation group "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v3

    invoke-static {v0, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v0

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getLastRow()I

    move-result p1

    invoke-static {v0, p1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    :cond_a9
    if-eqz v5, :cond_c0

    .line 1180
    invoke-interface {p1}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v5

    if-nez v5, :cond_b9

    .line 1184
    new-instance v5, Ljxl/write/WritableCellFeatures;

    invoke-direct {v5}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1185
    invoke-interface {p1, v5}, Ljxl/write/WritableCell;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1188
    :cond_b9
    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljxl/biff/BaseCellFeatures;->shareDataValidation(Ljxl/biff/BaseCellFeatures;)V

    .line 1191
    :cond_c0
    invoke-virtual {v2, v0}, Ljxl/write/biff/RowRecord;->addCell(Ljxl/write/biff/CellValue;)V

    add-int/2addr v1, v4

    .line 1194
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 1195
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->getMaxColumn()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    .line 1199
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    invoke-virtual {v0, p1, v1, p0}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    return-void

    .line 1147
    :cond_e0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->cellReferenced:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .registers 3

    .line 2507
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2508
    instance-of p1, p1, Ljxl/biff/drawing/Drawing;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    return-void
.end method

.method addValidationCell(Ljxl/write/biff/CellValue;)V
    .registers 3

    .line 2589
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkMergedBorders()V
    .registers 10

    .line 2190
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    iget-object v5, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    iget v7, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    iget v8, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    invoke-virtual/range {v0 .. v8}, Ljxl/write/biff/SheetWriter;->setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;II)V

    .line 2198
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v1

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getColumns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljxl/write/biff/SheetWriter;->setDimensions(II)V

    .line 2199
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->checkMergedBorders()V

    return-void
.end method

.method copy(Ljxl/Sheet;)V
    .registers 4

    .line 1569
    new-instance v0, Ljxl/SheetSettings;

    invoke-interface {p1}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/SheetSettings;Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 1571
    new-instance v0, Ljxl/write/biff/SheetCopier;

    invoke-direct {v0, p1, p0}, Ljxl/write/biff/SheetCopier;-><init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V

    .line 1572
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnFormats(Ljava/util/TreeSet;)V

    .line 1573
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setFormatRecords(Ljxl/biff/FormattingRecords;)V

    .line 1574
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setHyperlinks(Ljava/util/ArrayList;)V

    .line 1575
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setMergedCells(Ljxl/write/biff/MergedCells;)V

    .line 1576
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setRowBreaks(Ljava/util/ArrayList;)V

    .line 1577
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnBreaks(Ljava/util/ArrayList;)V

    .line 1578
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setSheetWriter(Ljxl/write/biff/SheetWriter;)V

    .line 1579
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setDrawings(Ljava/util/ArrayList;)V

    .line 1580
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setImages(Ljava/util/ArrayList;)V

    .line 1581
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setConditionalFormats(Ljava/util/ArrayList;)V

    .line 1582
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setValidatedCells(Ljava/util/ArrayList;)V

    .line 1584
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->copySheet()V

    .line 1586
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 1587
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 1588
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getPLSRecord()Ljxl/write/biff/PLSRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 1589
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->isChartOnly()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 1590
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 1591
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getRows()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 1592
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    .line 1593
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getMaxRowOutlineLevel()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    .line 1594
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getMaxColumnOutlineLevel()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    return-void
.end method

.method public getCell(II)Ljxl/Cell;
    .registers 3

    .line 380
    invoke-virtual {p0, p1, p2}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object p1

    return-object p1
.end method

.method getCharts()[Ljxl/biff/drawing/Chart;
    .registers 2

    .line 2167
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v0

    return-object v0
.end method

.method getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;
    .registers 7

    .line 1263
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 1267
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    if-nez v2, :cond_1f

    .line 1269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/ColumnInfoRecord;

    .line 1271
    invoke-virtual {v3}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v4

    if-lt v4, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    :cond_1f
    if-nez v2, :cond_22

    return-object v1

    .line 1282
    :cond_22
    invoke-virtual {v3}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v0

    if-ne v0, p1, :cond_29

    move-object v1, v3

    :cond_29
    return-object v1
.end method

.method public getColumns()I
    .registers 2

    .line 440
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    return v0
.end method

.method getComboBox()Ljxl/biff/drawing/ComboBox;
    .registers 2

    .line 2600
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 610
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method getRowRecord(I)Ljxl/write/biff/RowRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2b

    .line 1220
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-lt p1, v1, :cond_1b

    .line 1223
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljxl/write/biff/RowRecord;

    iput-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 1224
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1228
    :cond_1b
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v0, v0, p1

    if-nez v0, :cond_2a

    .line 1232
    new-instance v0, Ljxl/write/biff/RowRecord;

    invoke-direct {v0, p1, p0}, Ljxl/write/biff/RowRecord;-><init>(ILjxl/write/WritableSheet;)V

    .line 1233
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aput-object v0, v1, p1

    :cond_2a
    return-object v0

    .line 1214
    :cond_2b
    new-instance p1, Ljxl/write/biff/RowsExceededException;

    invoke-direct {p1}, Ljxl/write/biff/RowsExceededException;-><init>()V

    throw p1
.end method

.method public getRows()I
    .registers 2

    .line 430
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return v0
.end method

.method public getSettings()Ljxl/SheetSettings;
    .registers 2

    .line 2099
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;
    .registers 2

    .line 2252
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    return-object v0
.end method

.method getWorkbookSettings()Ljxl/WorkbookSettings;
    .registers 2

    .line 2107
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getWritableCell(II)Ljxl/write/WritableCell;
    .registers 5

    .line 410
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-ge p2, v1, :cond_10

    aget-object v1, v0, p2

    if-eqz v1, :cond_10

    .line 412
    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_18

    .line 417
    new-instance v0, Ljxl/biff/EmptyCell;

    invoke-direct {v0, p1, p2}, Ljxl/biff/EmptyCell;-><init>(II)V

    :cond_18
    return-object v0
.end method

.method isChartOnly()Z
    .registers 2

    .line 2300
    iget-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    return v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V
    .registers 8

    .line 2223
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/ColumnInfoRecord;

    .line 2226
    invoke-virtual {v1, p1}, Ljxl/write/biff/ColumnInfoRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2230
    :goto_18
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v3, v2

    if-ge v1, v3, :cond_29

    .line 2232
    aget-object v3, v2, v1

    if-eqz v3, :cond_26

    .line 2234
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljxl/write/biff/RowRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2239
    :cond_29
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v1

    .line 2240
    :goto_2d
    array-length v2, v1

    if-ge v0, v2, :cond_38

    .line 2242
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/drawing/Chart;->rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_38
    return-void
.end method

.method removeDataValidation(Ljxl/write/biff/CellValue;)V
    .registers 5

    .line 2533
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_f

    .line 2535
    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v1

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljxl/biff/DataValidation;->removeDataValidation(II)V

    .line 2538
    :cond_f
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    .line 2540
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2544
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not remove validated cell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method removeDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .registers 4

    .line 2518
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2519
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2520
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    .line 2521
    iput-boolean v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 2522
    :goto_19
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    return-void
.end method

.method public setColumnView(II)V
    .registers 4

    .line 1345
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    mul-int/lit16 p2, p2, 0x100

    .line 1346
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    .line 1347
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setColumnView(ILjxl/CellView;)V

    return-void
.end method

.method public setColumnView(ILjxl/CellView;)V
    .registers 7

    .line 1374
    invoke-virtual {p2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    if-nez v0, :cond_14

    .line 1377
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v0

    .line 1378
    invoke-virtual {v0}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v0

    .line 1383
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1385
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1, v0}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 1388
    :cond_1f
    invoke-virtual {p2}, Ljxl/CellView;->depUsed()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Ljxl/CellView;->getDimension()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    goto :goto_30

    :cond_2c
    invoke-virtual {p2}, Ljxl/CellView;->getSize()I

    move-result v1

    .line 1390
    :goto_30
    invoke-virtual {p2}, Ljxl/CellView;->isAutosize()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1392
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_40
    new-instance v2, Ljxl/write/biff/ColumnInfoRecord;

    invoke-direct {v2, p1, v1, v0}, Ljxl/write/biff/ColumnInfoRecord;-><init>(IILjxl/biff/XFRecord;)V

    .line 1399
    invoke-virtual {p2}, Ljxl/CellView;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    .line 1401
    invoke-virtual {v2, v0}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 1404
    :cond_4f
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1406
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 1410
    :cond_5d
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1411
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_14 .. :try_end_67} :catch_68

    goto :goto_8a

    :catch_68
    nop

    .line 1416
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v1, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1419
    new-instance v0, Ljxl/write/biff/ColumnInfoRecord;

    invoke-virtual {p2}, Ljxl/CellView;->getDimension()I

    move-result p2

    mul-int/lit16 p2, p2, 0x100

    sget-object v1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {v0, p1, p2, v1}, Ljxl/write/biff/ColumnInfoRecord;-><init>(IILjxl/biff/XFRecord;)V

    .line 1421
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 1423
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_8a
    :goto_8a
    return-void
.end method

.method setComboBox(Ljxl/biff/drawing/ComboBox;)V
    .registers 2

    .line 2610
    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method

.method public setRowView(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1439
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1440
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    const/4 p2, 0x0

    .line 1441
    invoke-virtual {v0, p2}, Ljxl/CellView;->setHidden(Z)V

    .line 1442
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setRowView(ILjxl/CellView;)V

    return-void
.end method

.method public setRowView(ILjxl/CellView;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1490
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v0

    .line 1492
    invoke-virtual {p2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    if-eqz v1, :cond_20

    .line 1498
    :try_start_c
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1500
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v2, v1}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_17
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_20

    .line 1506
    :catch_18
    sget-object v1, Ljxl/write/biff/WritableSheetImpl;->logger:Ljxl/common/Logger;

    const-string v2, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_20
    :goto_20
    move-object v6, v1

    .line 1512
    invoke-virtual {p2}, Ljxl/CellView;->getSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljxl/CellView;->isHidden()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZIZLjxl/biff/XFRecord;)V

    .line 1518
    iget p2, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return-void
.end method

.method public write()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    iget-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 1531
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1533
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingGroup;->hasDrawingsOmitted()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1536
    :cond_15
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 1538
    invoke-direct {p0}, Ljxl/write/biff/WritableSheetImpl;->autosizeColumns()V

    .line 1541
    :cond_20
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    iget-object v5, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    iget-object v7, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v8, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    iget v9, p0, Ljxl/write/biff/WritableSheetImpl;->maxRowOutlineLevel:I

    iget v10, p0, Ljxl/write/biff/WritableSheetImpl;->maxColumnOutlineLevel:I

    invoke-virtual/range {v2 .. v10}, Ljxl/write/biff/SheetWriter;->setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;II)V

    .line 1549
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v2

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getColumns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljxl/write/biff/SheetWriter;->setDimensions(II)V

    .line 1550
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setSettings(Ljxl/SheetSettings;)V

    .line 1551
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setPLS(Ljxl/write/biff/PLSRecord;)V

    .line 1552
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljxl/write/biff/SheetWriter;->setDrawings(Ljava/util/ArrayList;Z)V

    .line 1553
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setButtonPropertySet(Ljxl/write/biff/ButtonPropertySetRecord;)V

    .line 1554
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljxl/write/biff/SheetWriter;->setDataValidation(Ljxl/biff/DataValidation;Ljava/util/ArrayList;)V

    .line 1555
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setConditionalFormats(Ljava/util/ArrayList;)V

    .line 1556
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setAutoFilter(Ljxl/biff/AutoFilter;)V

    .line 1558
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->write()V

    return-void
.end method
