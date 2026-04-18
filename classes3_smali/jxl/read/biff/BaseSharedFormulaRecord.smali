.class public abstract Ljxl/read/biff/BaseSharedFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "BaseSharedFormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;


# instance fields
.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private filePos:I

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private tokens:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V
    .registers 7

    .line 78
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 79
    iput-object p3, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 80
    iput-object p4, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 81
    iput p6, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->filePos:I

    return-void
.end method


# virtual methods
.method protected final getExternalSheet()Ljxl/biff/formula/ExternalSheet;
    .registers 2

    .line 132
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    return-object v0
.end method

.method final getFilePos()I
    .registers 2

    .line 163
    iget v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->filePos:I

    return v0
.end method

.method protected final getNameTable()Ljxl/biff/WorkbookMethods;
    .registers 2

    .line 142
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    return-object v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .registers 2

    .line 153
    invoke-super {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method protected final getTokens()[B
    .registers 2

    .line 122
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->tokens:[B

    return-object v0
.end method

.method setTokens([B)V
    .registers 2

    .line 112
    iput-object p1, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->tokens:[B

    return-void
.end method
