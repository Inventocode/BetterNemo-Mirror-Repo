.class Ljxl/biff/drawing/SpgrContainer;
.super Ljxl/biff/drawing/EscherContainer;
.source "SpgrContainer.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Ljxl/biff/drawing/SpgrContainer;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    return-void
.end method
