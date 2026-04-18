.class public Ljxl/read/biff/ButtonPropertySetRecord;
.super Ljxl/biff/RecordData;
.source "ButtonPropertySetRecord.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 55
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method
