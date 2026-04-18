.class Ljxl/write/biff/RowRecord;
.super Ljxl/biff/WritableRecordData;
.source "RowRecord.java"


# static fields
.field private static defaultHeightIndicator:I

.field private static final logger:Ljxl/common/Logger;

.field private static maxColumns:I


# instance fields
.field private cells:[Ljxl/write/biff/CellValue;

.field private collapsed:Z

.field private defaultFormat:Z

.field private groupStart:Z

.field private matchesDefFontHeight:Z

.field private numColumns:I

.field private outlineLevel:I

.field private rowHeight:I

.field private rowNumber:I

.field private sheet:Ljxl/write/WritableSheet;

.field private style:Ljxl/biff/XFRecord;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Ljxl/write/biff/RowRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/RowRecord;->logger:Ljxl/common/Logger;

    const/16 v0, 0xff

    .line 109
    sput v0, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    const/16 v0, 0x100

    .line 114
    sput v0, Ljxl/write/biff/RowRecord;->maxColumns:I

    return-void
.end method

.method public constructor <init>(ILjxl/write/WritableSheet;)V
    .registers 4

    .line 138
    sget-object v0, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 139
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    const/4 p1, 0x0

    new-array v0, p1, [Ljxl/write/biff/CellValue;

    .line 140
    iput-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 141
    iput p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    .line 142
    sget v0, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    iput v0, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 143
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    .line 145
    iput-object p2, p0, Ljxl/write/biff/RowRecord;->sheet:Ljxl/write/WritableSheet;

    return-void
.end method

.method private writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 381
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    .line 384
    new-instance v0, Ljxl/write/biff/MulRKRecord;

    invoke-direct {v0, p1}, Ljxl/write/biff/MulRKRecord;-><init>(Ljava/util/List;)V

    .line 385
    invoke-virtual {p2, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_2b

    .line 390
    :cond_17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    invoke-virtual {p2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_1b

    .line 398
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addCell(Ljxl/write/biff/CellValue;)V
    .registers 7

    .line 226
    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v0

    .line 228
    sget v1, Ljxl/write/biff/RowRecord;->maxColumns:I

    if-lt v0, v1, :cond_30

    .line 230
    sget-object v0, Ljxl/write/biff/RowRecord;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not add cell at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v2

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result p1

    invoke-static {v2, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it exceeds the maximum column limit"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 238
    :cond_30
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v2, v1

    if-lt v0, v2, :cond_47

    .line 241
    array-length v2, v1

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Ljxl/write/biff/CellValue;

    iput-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 242
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    :cond_47
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v2, v1, v0

    if-eqz v2, :cond_6b

    .line 249
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 252
    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->removeComment()V

    .line 256
    invoke-virtual {v1}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 259
    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->removeDataValidation()V

    .line 265
    :cond_6b
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 267
    iget p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    return-void
.end method

.method public getCell(I)Ljxl/write/biff/CellValue;
    .registers 3

    if-ltz p1, :cond_b

    .line 477
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object p1, v0, p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getData()[B
    .registers 6

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 414
    iget v2, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 415
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->sheet:Ljxl/write/WritableSheet;

    invoke-interface {v3}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_22

    .line 420
    sget v3, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    if-ne v2, v3, :cond_22

    .line 422
    iget-object v2, p0, Ljxl/write/biff/RowRecord;->sheet:Ljxl/write/WritableSheet;

    invoke-interface {v2}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v2

    .line 426
    :cond_22
    iget v3, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 427
    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v3, 0x6

    .line 428
    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 430
    iget v2, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    add-int/lit16 v2, v2, 0x100

    .line 432
    iget-boolean v3, p0, Ljxl/write/biff/RowRecord;->groupStart:Z

    if-eqz v3, :cond_3c

    or-int/lit8 v2, v2, 0x10

    .line 437
    :cond_3c
    iget-boolean v3, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    if-eqz v3, :cond_42

    or-int/lit8 v2, v2, 0x20

    .line 442
    :cond_42
    iget-boolean v3, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    if-nez v3, :cond_48

    or-int/lit8 v2, v2, 0x40

    .line 447
    :cond_48
    iget-boolean v3, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    if-eqz v3, :cond_53

    or-int/lit16 v2, v2, 0x80

    .line 450
    iget v3, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    shl-int/lit8 v0, v3, 0x10

    or-int/2addr v2, v0

    :cond_53
    const/16 v0, 0xc

    .line 453
    invoke-static {v2, v1, v0}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-object v1
.end method

.method public getMaxColumn()I
    .registers 2

    .line 465
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    return v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;)V
    .registers 3

    .line 633
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    if-eqz v0, :cond_c

    .line 635
    iget v0, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    :cond_c
    return-void
.end method

.method setRowDetails(IZZIZLjxl/biff/XFRecord;)V
    .registers 7

    .line 185
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 186
    iput-boolean p3, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    .line 187
    iput-boolean p2, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    .line 188
    iput p4, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    .line 189
    iput-boolean p5, p0, Ljxl/write/biff/RowRecord;->groupStart:Z

    if-eqz p6, :cond_17

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    .line 194
    iput-object p6, p0, Ljxl/write/biff/RowRecord;->style:Ljxl/biff/XFRecord;

    .line 195
    invoke-virtual {p6}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    :cond_17
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p1, p0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method

.method public writeCells(Ljxl/write/biff/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 313
    :goto_7
    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge v2, v3, :cond_86

    .line 316
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v4, v3, v2

    if-eqz v4, :cond_80

    .line 320
    aget-object v3, v3, v2

    invoke-interface {v3}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v3, v4, :cond_4e

    .line 322
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    check-cast v3, Ljxl/write/Number;

    .line 323
    invoke-virtual {v3}, Ljxl/write/biff/NumberRecord;->getValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljxl/write/biff/NumberRecord;->getValue()D

    move-result-wide v6

    double-to-int v6, v6

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-nez v8, :cond_4e

    invoke-virtual {v3}, Ljxl/write/biff/NumberRecord;->getValue()D

    move-result-wide v4

    const-wide v6, 0x41bfffffff000000L  # 5.36870911E8

    cmpg-double v8, v4, v6

    if-gez v8, :cond_4e

    invoke-virtual {v3}, Ljxl/write/biff/NumberRecord;->getValue()D

    move-result-wide v4

    const-wide/high16 v6, -0x3e40000000000000L  # -5.36870912E8

    cmpl-double v8, v4, v6

    if-lez v8, :cond_4e

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v3

    if-nez v3, :cond_4e

    const/4 v3, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v3, 0x0

    :goto_4f
    if-eqz v3, :cond_59

    .line 335
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 341
    :cond_59
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    .line 342
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 346
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-interface {v3}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v3, v4, :cond_83

    .line 348
    new-instance v3, Ljxl/write/biff/StringRecord;

    iget-object v4, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljxl/write/biff/StringRecord;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_83

    .line 357
    :cond_80
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 362
    :cond_86
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    return-void
.end method
