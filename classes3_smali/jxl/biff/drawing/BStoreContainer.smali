.class Ljxl/biff/drawing/BStoreContainer;
.super Ljxl/biff/drawing/EscherContainer;
.source "BStoreContainer.java"


# instance fields
.field private numBlips:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Ljxl/biff/drawing/BStoreContainer;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 48
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getInstance()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    return-void
.end method


# virtual methods
.method public getNumBlips()I
    .registers 2

    .line 77
    iget v0, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    return v0
.end method

.method setNumBlips(I)V
    .registers 2

    .line 66
    iput p1, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    .line 67
    invoke-virtual {p0, p1}, Ljxl/biff/drawing/EscherRecord;->setInstance(I)V

    return-void
.end method
