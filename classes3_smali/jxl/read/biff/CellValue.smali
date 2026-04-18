.class public abstract Ljxl/read/biff/CellValue;
.super Ljxl/biff/RecordData;
.source "CellValue.java"

# interfaces
.implements Ljxl/Cell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private features:Ljxl/CellFeatures;

.field private format:Ljxl/biff/XFRecord;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Ljxl/read/biff/CellValue;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CellValue;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .registers 7

    .line 93
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 94
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 95
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/CellValue;->row:I

    const/4 v1, 0x2

    .line 96
    aget-byte v1, p1, v1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/CellValue;->column:I

    const/4 v1, 0x4

    .line 97
    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    .line 98
    iput-object p3, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    .line 99
    iput-object p2, p0, Ljxl/read/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 100
    iput-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .registers 2

    .line 192
    iget-object v0, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .registers 3

    .line 142
    iget-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    if-nez v0, :cond_11

    .line 144
    iget-object v0, p0, Ljxl/read/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/CellValue;->format:Ljxl/biff/XFRecord;

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    .line 148
    :cond_11
    iget-object v0, p0, Ljxl/read/biff/CellValue;->format:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public final getColumn()I
    .registers 2

    .line 120
    iget v0, p0, Ljxl/read/biff/CellValue;->column:I

    return v0
.end method

.method public final getRow()I
    .registers 2

    .line 110
    iget v0, p0, Ljxl/read/biff/CellValue;->row:I

    return v0
.end method

.method protected getSheet()Ljxl/read/biff/SheetImpl;
    .registers 2

    .line 182
    iget-object v0, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    return-object v0
.end method

.method public final getXFIndex()I
    .registers 2

    .line 131
    iget v0, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    return v0
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .registers 4

    .line 202
    iget-object v0, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    if-eqz v0, :cond_b

    .line 204
    sget-object v0, Ljxl/read/biff/CellValue;->logger:Ljxl/common/Logger;

    const-string v1, "current cell features not null - overwriting"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 207
    :cond_b
    iput-object p1, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    return-void
.end method
