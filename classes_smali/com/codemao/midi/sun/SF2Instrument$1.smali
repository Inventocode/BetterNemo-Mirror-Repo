.class Lcom/codemao/midi/sun/SF2Instrument$1;
.super Ljava/lang/Object;
.source "SF2Instrument.java"

# interfaces
.implements Lcom/codemao/midi/sun/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/sun/SF2Instrument;->getPerformers()[Lcom/codemao/midi/sun/ModelPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SF2Instrument;)V
    .registers 2

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(D)D
    .registers 7

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    cmpg-double v2, p1, v0

    if-gez v2, :cond_e

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    mul-double p1, p1, v2

    sub-double/2addr v0, p1

    return-wide v0

    :cond_e
    const-wide/16 p1, 0x0

    return-wide p1
.end method
