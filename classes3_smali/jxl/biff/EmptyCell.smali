.class public Ljxl/biff/EmptyCell;
.super Ljava/lang/Object;
.source "EmptyCell.java"

# interfaces
.implements Ljxl/write/WritableCell;


# instance fields
.field private col:I

.field private row:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Ljxl/biff/EmptyCell;->row:I

    .line 56
    iput p1, p0, Ljxl/biff/EmptyCell;->col:I

    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumn()I
    .registers 2

    .line 76
    iget v0, p0, Ljxl/biff/EmptyCell;->col:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getRow()I
    .registers 2

    .line 66
    iget v0, p0, Ljxl/biff/EmptyCell;->row:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 86
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method

.method public getWritableCellFeatures()Ljxl/write/WritableCellFeatures;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCellFeatures(Ljxl/write/WritableCellFeatures;)V
    .registers 2

    return-void
.end method

.method public setCellFormat(Ljxl/format/CellFormat;)V
    .registers 2

    return-void
.end method
