.class Ljxl/read/biff/DateFormulaRecord;
.super Ljxl/read/biff/DateRecord;
.source "DateFormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;
.implements Ljxl/DateFormulaCell;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljxl/read/biff/CellValue;->getXFIndex()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 78
    invoke-virtual {p1}, Ljxl/read/biff/NumberFormulaRecord;->getFormulaData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/DateFormulaRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getFormulaData()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Ljxl/read/biff/DateRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 105
    iget-object v0, p0, Ljxl/read/biff/DateFormulaRecord;->data:[B

    return-object v0

    .line 101
    :cond_11
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 88
    sget-object v0, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    return-object v0
.end method
