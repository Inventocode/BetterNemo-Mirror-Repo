.class public abstract Ljxl/write/biff/BlankRecord;
.super Ljxl/write/biff/CellValue;
.source "BlankRecord.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Ljxl/write/biff/BlankRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 4

    .line 48
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    return-void
.end method

.method protected constructor <init>(IILjxl/format/CellFormat;)V
    .registers 5

    .line 61
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    return-void
.end method

.method protected constructor <init>(Ljxl/Cell;)V
    .registers 3

    .line 72
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 94
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method
