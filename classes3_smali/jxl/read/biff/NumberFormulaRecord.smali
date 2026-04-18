.class Ljxl/read/biff/NumberFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "NumberFormulaRecord.java"

# interfaces
.implements Ljxl/NumberCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/NumberFormulaCell;


# static fields
.field private static final defaultFormat:Ljava/text/DecimalFormat;


# instance fields
.field private data:[B

.field private format:Ljava/text/NumberFormat;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    const-class v0, Ljxl/read/biff/NumberFormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    .line 62
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/NumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .registers 6

    .line 98
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 102
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    .line 104
    invoke-virtual {p0}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    if-nez p1, :cond_1d

    .line 108
    sget-object p1, Ljxl/read/biff/NumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    .line 111
    :cond_1d
    iget-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    const/4 p2, 0x6

    invoke-static {p1, p2}, Ljxl/biff/DoubleHelper;->getIEEEDouble([BI)D

    move-result-wide p1

    iput-wide p1, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 4

    .line 131
    iget-wide v0, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, ""

    :goto_13
    return-object v0
.end method

.method public getFormulaData()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljxl/read/biff/CellValue;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 158
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 159
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 154
    :cond_1c
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 141
    sget-object v0, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .registers 3

    .line 121
    iget-wide v0, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    return-wide v0
.end method
