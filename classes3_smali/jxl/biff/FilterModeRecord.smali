.class public Ljxl/biff/FilterModeRecord;
.super Ljxl/biff/WritableRecordData;
.source "FilterModeRecord.java"


# instance fields
.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Ljxl/biff/FilterModeRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 47
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/FilterModeRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 57
    iget-object v0, p0, Ljxl/biff/FilterModeRecord;->data:[B

    return-object v0
.end method
