.class Ljxl/read/biff/HideobjRecord;
.super Ljxl/biff/RecordData;
.source "HideobjRecord.java"


# instance fields
.field private hidemode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Ljxl/read/biff/HideobjRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 4

    .line 48
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 49
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/HideobjRecord;->hidemode:I

    return-void
.end method


# virtual methods
.method public getHideMode()I
    .registers 2

    .line 60
    iget v0, p0, Ljxl/read/biff/HideobjRecord;->hidemode:I

    return v0
.end method
