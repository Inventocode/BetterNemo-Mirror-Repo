.class public Ljxl/read/biff/BOFRecord;
.super Ljxl/biff/RecordData;
.source "BOFRecord.java"


# instance fields
.field private substreamType:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Ljxl/read/biff/BOFRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 80
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 81
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/BOFRecord;->version:I

    const/4 v0, 0x2

    .line 82
    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    return-void
.end method


# virtual methods
.method getLength()I
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v0

    return v0
.end method

.method public isBiff7()Z
    .registers 3

    .line 102
    iget v0, p0, Ljxl/read/biff/BOFRecord;->version:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBiff8()Z
    .registers 3

    .line 92
    iget v0, p0, Ljxl/read/biff/BOFRecord;->version:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isChart()Z
    .registers 3

    .line 148
    iget v0, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isWorkbookGlobals()Z
    .registers 3

    .line 115
    iget v0, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isWorksheet()Z
    .registers 3

    .line 126
    iget v0, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
