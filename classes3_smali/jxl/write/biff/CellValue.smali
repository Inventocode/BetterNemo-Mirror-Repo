.class public abstract Ljxl/write/biff/CellValue;
.super Ljxl/biff/WritableRecordData;
.source "CellValue.java"

# interfaces
.implements Ljxl/write/WritableCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private copied:Z

.field private features:Ljxl/write/WritableCellFeatures;

.field private format:Ljxl/biff/XFRecord;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private referenced:Z

.field private row:I

.field private sheet:Ljxl/write/biff/WritableSheetImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Ljxl/write/biff/CellValue;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;II)V
    .registers 5

    .line 113
    sget-object v0, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {p0, p1, p2, p3, v0}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V
    .registers 5

    .line 149
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 150
    iput p3, p0, Ljxl/write/biff/CellValue;->row:I

    .line 151
    iput p2, p0, Ljxl/write/biff/CellValue;->column:I

    .line 152
    check-cast p4, Ljxl/biff/XFRecord;

    iput-object p4, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 154
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;Ljxl/Cell;)V
    .registers 5

    .line 126
    invoke-interface {p2}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {p2}, Ljxl/Cell;->getRow()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 129
    invoke-interface {p2}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    iput-object p1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 131
    invoke-interface {p2}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 133
    new-instance p1, Ljxl/write/WritableCellFeatures;

    invoke-interface {p2}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p2

    invoke-direct {p1, p2}, Ljxl/write/WritableCellFeatures;-><init>(Ljxl/CellFeatures;)V

    iput-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 134
    invoke-virtual {p1, p0}, Ljxl/biff/BaseCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    :cond_2a
    return-void
.end method

.method private addCellFormat()V
    .registers 4

    .line 467
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v0

    .line 468
    iget-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v0, v1}, Ljxl/write/biff/Styles;->getFormat(Ljxl/biff/XFRecord;)Ljxl/biff/XFRecord;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 472
    :try_start_12
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 474
    iget-object v1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v2, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v1, v2}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_1f
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_2d

    .line 479
    :catch_20
    sget-object v1, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    const-string v2, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 481
    invoke-virtual {v0}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public final addCellFeatures()V
    .registers 11

    .line 556
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-nez v0, :cond_5

    return-void

    .line 561
    :cond_5
    iget-boolean v1, p0, Ljxl/write/biff/CellValue;->copied:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    .line 563
    iput-boolean v3, p0, Ljxl/write/biff/CellValue;->copied:Z

    return-void

    .line 568
    :cond_e
    invoke-virtual {v0}, Ljxl/CellFeatures;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 570
    new-instance v0, Ljxl/biff/drawing/Comment;

    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/CellFeatures;->getComment()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljxl/write/biff/CellValue;->column:I

    iget v4, p0, Ljxl/write/biff/CellValue;->row:I

    invoke-direct {v0, v1, v2, v4}, Ljxl/biff/drawing/Comment;-><init>(Ljava/lang/String;II)V

    .line 572
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/biff/BaseCellFeatures;->getCommentWidth()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setWidth(D)V

    .line 573
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/biff/BaseCellFeatures;->getCommentHeight()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setHeight(D)V

    .line 574
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 575
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 576
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1, v0}, Ljxl/biff/BaseCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    .line 579
    :cond_48
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/biff/BaseCellFeatures;->hasDataValidation()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 583
    :try_start_50
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    iget v5, p0, Ljxl/write/biff/CellValue;->column:I

    iget v6, p0, Ljxl/write/biff/CellValue;->row:I

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Ljxl/biff/DVParser;->setCell(IILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    :try_end_6f
    .catch Ljxl/biff/formula/FormulaException; {:try_start_50 .. :try_end_6f} :catch_70

    goto :goto_73

    .line 591
    :catch_70
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 594
    :goto_73
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p0}, Ljxl/write/biff/WritableSheetImpl;->addValidationCell(Ljxl/write/biff/CellValue;)V

    .line 595
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/biff/BaseCellFeatures;->hasDropDown()Z

    move-result v0

    if-nez v0, :cond_81

    return-void

    .line 601
    :cond_81
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    if-nez v0, :cond_a1

    .line 606
    new-instance v0, Ljxl/biff/drawing/ComboBox;

    invoke-direct {v0}, Ljxl/biff/drawing/ComboBox;-><init>()V

    .line 607
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 608
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 609
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->setComboBox(Ljxl/biff/drawing/ComboBox;)V

    .line 612
    :cond_a1
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/biff/BaseCellFeatures;->setComboBox(Ljxl/biff/drawing/ComboBox;)V

    :cond_ac
    return-void
.end method

.method public getCellFeatures()Ljxl/CellFeatures;
    .registers 2

    .line 492
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .registers 2

    .line 314
    iget-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public getColumn()I
    .registers 2

    .line 223
    iget v0, p0, Ljxl/write/biff/CellValue;->column:I

    return v0
.end method

.method public getData()[B
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 259
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 260
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 261
    iget-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getRow()I
    .registers 2

    .line 213
    iget v0, p0, Ljxl/write/biff/CellValue;->row:I

    return v0
.end method

.method public getSheet()Ljxl/write/biff/WritableSheetImpl;
    .registers 2

    .line 455
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    return-object v0
.end method

.method public getWritableCellFeatures()Ljxl/write/WritableCellFeatures;
    .registers 2

    .line 502
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    return-object v0
.end method

.method final getXFIndex()I
    .registers 2

    .line 304
    iget-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v0

    return v0
.end method

.method final isReferenced()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    return v0
.end method

.method public final removeComment(Ljxl/biff/drawing/Comment;)V
    .registers 3

    .line 641
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p1}, Ljxl/write/biff/WritableSheetImpl;->removeDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    return-void
.end method

.method public final removeDataValidation()V
    .registers 2

    .line 649
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p0}, Ljxl/write/biff/WritableSheetImpl;->removeDataValidation(Ljxl/write/biff/CellValue;)V

    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .registers 4

    const/4 p2, 0x1

    .line 278
    iput-boolean p2, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 279
    iput-object p3, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    .line 280
    iput-object p1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 282
    invoke-direct {p0}, Ljxl/write/biff/CellValue;->addCellFormat()V

    .line 283
    invoke-virtual {p0}, Ljxl/write/biff/CellValue;->addCellFeatures()V

    return-void
.end method

.method public setCellFeatures(Ljxl/write/WritableCellFeatures;)V
    .registers 6

    .line 512
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_8d

    .line 514
    sget-object v0, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current cell features for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not null - overwriting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/biff/BaseCellFeatures;->hasDataValidation()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 523
    iget-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {p1}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object p1

    .line 524
    sget-object v0, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add cell features to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because it is part of the shared cell validation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v3

    invoke-static {v2, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/biff/DVParser;->getLastRow()I

    move-result p1

    invoke-static {v2, p1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 537
    :cond_8d
    iput-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 538
    invoke-virtual {p1, p0}, Ljxl/biff/BaseCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    .line 542
    iget-boolean p1, p0, Ljxl/write/biff/CellValue;->referenced:Z

    if-eqz p1, :cond_99

    .line 544
    invoke-virtual {p0}, Ljxl/write/biff/CellValue;->addCellFeatures()V

    :cond_99
    return-void
.end method

.method public setCellFormat(Ljxl/format/CellFormat;)V
    .registers 2

    .line 189
    check-cast p1, Ljxl/biff/XFRecord;

    iput-object p1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 194
    iget-boolean p1, p0, Ljxl/write/biff/CellValue;->referenced:Z

    if-nez p1, :cond_9

    return-void

    .line 201
    :cond_9
    iget-object p1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    .line 203
    invoke-direct {p0}, Ljxl/write/biff/CellValue;->addCellFormat()V

    return-void
.end method
