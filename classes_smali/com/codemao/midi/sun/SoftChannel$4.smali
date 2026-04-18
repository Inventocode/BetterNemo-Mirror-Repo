.class Lcom/codemao/midi/sun/SoftChannel$4;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcom/codemao/midi/sun/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/sun/SoftChannel;->createModelConnections(Lcom/codemao/midi/sun/ModelIdentifier;[I[I)[Lcom/codemao/midi/sun/ModelConnectionBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field s:D

.field final synthetic val$scale:D


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftChannel;D)V
    .registers 4

    .line 870
    iput-wide p2, p0, Lcom/codemao/midi/sun/SoftChannel$4;->val$scale:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    iput-wide p2, p0, Lcom/codemao/midi/sun/SoftChannel$4;->s:D

    return-void
.end method


# virtual methods
.method public transform(D)D
    .registers 8

    .line 873
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChannel$4;->s:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_d

    sub-double/2addr v2, v0

    mul-double p1, p1, v2

    add-double/2addr v0, p1

    goto :goto_16

    :cond_d
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2a

    sub-double/2addr v0, v2

    mul-double p1, p1, v0

    add-double v0, p1, v2

    :goto_16
    const-wide p1, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    .line 879
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr p1, v2

    neg-double p1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    return-wide p1

    :cond_2a
    const-wide/16 p1, 0x0

    return-wide p1
.end method
