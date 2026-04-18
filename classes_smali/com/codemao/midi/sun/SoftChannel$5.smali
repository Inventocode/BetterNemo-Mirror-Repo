.class Lcom/codemao/midi/sun/SoftChannel$5;
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

    .line 924
    iput-wide p2, p0, Lcom/codemao/midi/sun/SoftChannel$5;->val$scale:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-wide p2, p0, Lcom/codemao/midi/sun/SoftChannel$5;->s:D

    return-void
.end method


# virtual methods
.method public transform(D)D
    .registers 7

    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    .line 927
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    div-double/2addr v2, v0

    neg-double v0, v2

    iget-wide v2, p0, Lcom/codemao/midi/sun/SoftChannel$5;->s:D

    mul-double p1, p1, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, p1

    .line 928
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    return-wide v0
.end method
