.class Ljxl/read/biff/NumberValue;
.super Ljava/lang/Object;
.source "NumberValue.java"

# interfaces
.implements Ljxl/NumberCell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field private static defaultFormat:Ljava/text/DecimalFormat;


# instance fields
.field private cellFormat:Ljxl/format/CellFormat;

.field private column:I

.field private features:Ljxl/CellFeatures;

.field private format:Ljava/text/NumberFormat;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private value:D

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/NumberValue;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(IIDILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .registers 8

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Ljxl/read/biff/NumberValue;->row:I

    .line 107
    iput p2, p0, Ljxl/read/biff/NumberValue;->column:I

    .line 108
    iput-wide p3, p0, Ljxl/read/biff/NumberValue;->value:D

    .line 109
    sget-object p1, Ljxl/read/biff/NumberValue;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object p1, p0, Ljxl/read/biff/NumberValue;->format:Ljava/text/NumberFormat;

    .line 110
    iput p5, p0, Ljxl/read/biff/NumberValue;->xfIndex:I

    .line 111
    iput-object p6, p0, Ljxl/read/biff/NumberValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Ljxl/read/biff/NumberValue;->initialized:Z

    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .registers 2

    .line 239
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .registers 3

    .line 188
    iget-boolean v0, p0, Ljxl/read/biff/NumberValue;->initialized:Z

    if-nez v0, :cond_11

    .line 190
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/NumberValue;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/NumberValue;->cellFormat:Ljxl/format/CellFormat;

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Ljxl/read/biff/NumberValue;->initialized:Z

    .line 194
    :cond_11
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->cellFormat:Ljxl/format/CellFormat;

    return-object v0
.end method

.method public final getColumn()I
    .registers 2

    .line 148
    iget v0, p0, Ljxl/read/biff/NumberValue;->column:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .registers 4

    .line 168
    iget-object v0, p0, Ljxl/read/biff/NumberValue;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/NumberValue;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRow()I
    .registers 2

    .line 138
    iget v0, p0, Ljxl/read/biff/NumberValue;->row:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 178
    sget-object v0, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .registers 3

    .line 158
    iget-wide v0, p0, Ljxl/read/biff/NumberValue;->value:D

    return-wide v0
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .registers 2

    .line 249
    iput-object p1, p0, Ljxl/read/biff/NumberValue;->features:Ljxl/CellFeatures;

    return-void
.end method

.method final setNumberFormat(Ljava/text/NumberFormat;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 127
    iput-object p1, p0, Ljxl/read/biff/NumberValue;->format:Ljava/text/NumberFormat;

    :cond_4
    return-void
.end method
