.class Ljxl/read/biff/ErrorRecord;
.super Ljxl/read/biff/CellValue;
.source "ErrorRecord.java"

# interfaces
.implements Ljxl/ErrorCell;


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 48
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p2, 0x6

    .line 50
    aget-byte p1, p1, p2

    iput p1, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 82
    sget-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    return-object v0
.end method
