.class Lcom/codemao/midi/sun/SoftPerformer$2;
.super Ljava/lang/Object;
.source "SoftPerformer.java"

# interfaces
.implements Lcom/codemao/midi/sun/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/sun/SoftPerformer;-><init>(Lcom/codemao/midi/sun/ModelPerformer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field s:D

.field final synthetic val$scale:D


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftPerformer;D)V
    .registers 4

    .line 650
    iput-wide p2, p0, Lcom/codemao/midi/sun/SoftPerformer$2;->val$scale:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-wide p2, p0, Lcom/codemao/midi/sun/SoftPerformer$2;->s:D

    return-void
.end method


# virtual methods
.method public transform(D)D
    .registers 8

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr p1, v0

    const-wide v0, 0x4082c00000000000L  # 600.0

    mul-double p1, p1, v0

    .line 655
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftPerformer$2;->s:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_17

    return-wide p1

    :cond_17
    cmpl-double v4, v0, v2

    if-lez v4, :cond_22

    neg-double v2, v0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_21

    neg-double p1, v0

    :cond_21
    return-wide p1

    :cond_22
    cmpg-double v2, p1, v0

    if-gez v2, :cond_27

    neg-double p1, v0

    :cond_27
    neg-double p1, p1

    return-wide p1
.end method
