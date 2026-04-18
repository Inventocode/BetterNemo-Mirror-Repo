.class Ljxl/read/biff/ErrorFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "ErrorFormulaRecord.java"

# interfaces
.implements Ljxl/ErrorCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/ErrorFormulaCell;


# instance fields
.field private data:[B

.field private error:Ljxl/biff/formula/FormulaErrorCode;

.field private errorCode:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .registers 6

    .line 84
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 88
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/ErrorFormulaRecord;->data:[B

    const/4 p2, 0x6

    .line 90
    aget-byte p1, p1, p2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    .line 92
    iget-object p1, p0, Ljxl/read/biff/ErrorFormulaRecord;->data:[B

    const/16 p2, 0x8

    aget-byte p1, p1, p2

    iput p1, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 3

    .line 114
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    if-nez v0, :cond_c

    .line 116
    iget v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    invoke-static {v0}, Ljxl/biff/formula/FormulaErrorCode;->getErrorCode(I)Ljxl/biff/formula/FormulaErrorCode;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    .line 119
    :cond_c
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    sget-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    if-eq v0, v1, :cond_17

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 104
    iget v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->errorCode:I

    return v0
.end method

.method public getFormulaData()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljxl/read/biff/CellValue;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 147
    iget-object v0, p0, Ljxl/read/biff/ErrorFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 148
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 143
    :cond_1c
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 130
    sget-object v0, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    return-object v0
.end method
