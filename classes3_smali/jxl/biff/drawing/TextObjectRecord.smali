.class public Ljxl/biff/drawing/TextObjectRecord;
.super Ljxl/biff/WritableRecordData;
.source "TextObjectRecord.java"


# instance fields
.field private data:[B

.field private textLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Ljxl/biff/drawing/TextObjectRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 56
    sget-object v0, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/TextObjectRecord;->textLength:I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 4

    .line 68
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 69
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/drawing/TextObjectRecord;->data:[B

    const/16 v0, 0xa

    .line 70
    aget-byte v0, p1, v0

    const/16 v1, 0xb

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/TextObjectRecord;->textLength:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 4

    .line 102
    iget-object v0, p0, Ljxl/biff/drawing/TextObjectRecord;->data:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/16 v0, 0x12

    new-array v0, v0, [B

    .line 107
    iput-object v0, p0, Ljxl/biff/drawing/TextObjectRecord;->data:[B

    const/16 v1, 0x212

    const/4 v2, 0x0

    .line 114
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 120
    iget v0, p0, Ljxl/biff/drawing/TextObjectRecord;->textLength:I

    iget-object v1, p0, Ljxl/biff/drawing/TextObjectRecord;->data:[B

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v0, 0x10

    .line 123
    iget-object v1, p0, Ljxl/biff/drawing/TextObjectRecord;->data:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 125
    iget-object v0, p0, Ljxl/biff/drawing/TextObjectRecord;->data:[B

    return-object v0
.end method

.method public getTextLength()I
    .registers 2

    .line 92
    iget v0, p0, Ljxl/biff/drawing/TextObjectRecord;->textLength:I

    return v0
.end method
