.class public Ljxl/biff/ConditionalFormatRangeRecord;
.super Ljxl/biff/WritableRecordData;
.source "ConditionalFormatRangeRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/ConditionalFormatRangeRecord$Range;
    }
.end annotation


# instance fields
.field private data:[B

.field private modified:Z

.field private ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 193
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 5

    .line 360
    iget-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    if-nez v0, :cond_7

    .line 362
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    return-object v0

    .line 365
    :cond_7
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xe

    new-array v0, v0, [B

    .line 368
    iget-object v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    .line 371
    throw v0
.end method
