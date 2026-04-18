.class Lcom/codemao/midi/sun/SoftPerformer$1;
.super Ljava/lang/Object;
.source "SoftPerformer.java"

# interfaces
.implements Lcom/codemao/midi/sun/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(D)D
    .registers 5

    const-wide/high16 v0, 0x40d0000000000000L  # 16384.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    shr-int/lit8 p2, p1, 0x7

    and-int/lit8 p1, p1, 0x7f

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p2, p1

    int-to-double p1, p2

    return-wide p1
.end method
