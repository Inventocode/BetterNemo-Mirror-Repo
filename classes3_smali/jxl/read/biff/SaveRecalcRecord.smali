.class Ljxl/read/biff/SaveRecalcRecord;
.super Ljxl/biff/RecordData;
.source "SaveRecalcRecord.java"


# instance fields
.field private recalculateOnSave:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Ljxl/read/biff/SaveRecalcRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 5

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 50
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    if-ne p1, v2, :cond_14

    const/4 v0, 0x1

    .line 52
    :cond_14
    iput-boolean v0, p0, Ljxl/read/biff/SaveRecalcRecord;->recalculateOnSave:Z

    return-void
.end method


# virtual methods
.method public getRecalculateOnSave()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Ljxl/read/biff/SaveRecalcRecord;->recalculateOnSave:Z

    return v0
.end method
