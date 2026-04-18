.class public Ljxl/read/biff/PLSRecord;
.super Ljxl/biff/RecordData;
.source "PLSRecord.java"


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 46
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method
