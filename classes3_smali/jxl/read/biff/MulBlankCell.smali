.class Ljxl/read/biff/MulBlankCell;
.super Ljava/lang/Object;
.source "MulBlankCell.java"

# interfaces
.implements Ljxl/Cell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private cellFormat:Ljxl/format/CellFormat;

.field private column:I

.field private features:Ljxl/CellFeatures;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Ljxl/read/biff/MulBlankCell;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/MulBlankCell;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .registers 6

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Ljxl/read/biff/MulBlankCell;->row:I

    .line 96
    iput p2, p0, Ljxl/read/biff/MulBlankCell;->column:I

    .line 97
    iput p3, p0, Ljxl/read/biff/MulBlankCell;->xfIndex:I

    .line 98
    iput-object p4, p0, Ljxl/read/biff/MulBlankCell;->formattingRecords:Ljxl/biff/FormattingRecords;

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .registers 2

    .line 190
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .registers 3

    .line 150
    iget-boolean v0, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    if-nez v0, :cond_11

    .line 152
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/MulBlankCell;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/MulBlankCell;->cellFormat:Ljxl/format/CellFormat;

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    .line 156
    :cond_11
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->cellFormat:Ljxl/format/CellFormat;

    return-object v0
.end method

.method public final getColumn()I
    .registers 2

    .line 120
    iget v0, p0, Ljxl/read/biff/MulBlankCell;->column:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final getRow()I
    .registers 2

    .line 110
    iget v0, p0, Ljxl/read/biff/MulBlankCell;->row:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 140
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .registers 4

    .line 200
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    if-eqz v0, :cond_b

    .line 202
    sget-object v0, Ljxl/read/biff/MulBlankCell;->logger:Ljxl/common/Logger;

    const-string v1, "current cell features not null - overwriting"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 205
    :cond_b
    iput-object p1, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    return-void
.end method
