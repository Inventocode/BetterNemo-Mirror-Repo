.class Ljxl/read/biff/Excel9FileRecord;
.super Ljxl/biff/RecordData;
.source "Excel9FileRecord.java"


# instance fields
.field private excel9file:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Ljxl/read/biff/Excel9FileRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Ljxl/read/biff/Excel9FileRecord;->excel9file:Z

    return-void
.end method


# virtual methods
.method public getExcel9File()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Ljxl/read/biff/Excel9FileRecord;->excel9file:Z

    return v0
.end method
