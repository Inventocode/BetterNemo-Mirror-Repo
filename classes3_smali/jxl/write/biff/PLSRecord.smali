.class Ljxl/write/biff/PLSRecord;
.super Ljxl/biff/WritableRecordData;
.source "PLSRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/PLSRecord;)V
    .registers 3

    .line 42
    sget-object v0, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 44
    invoke-virtual {p1}, Ljxl/read/biff/PLSRecord;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/PLSRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 67
    iget-object v0, p0, Ljxl/write/biff/PLSRecord;->data:[B

    return-object v0
.end method
