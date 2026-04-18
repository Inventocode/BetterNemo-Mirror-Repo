.class public abstract Lcom/codemao/midi/sun/SoftAbstractResampler;
.super Ljava/lang/Object;
.source "SoftAbstractResampler.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftResampler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPadding()I
.end method

.method public abstract interpolate([F[FF[FF[F[II)V
.end method

.method public openStreamer()Lcom/codemao/midi/sun/SoftResamplerStreamer;
    .registers 2

    .line 388
    new-instance v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;-><init>(Lcom/codemao/midi/sun/SoftAbstractResampler;)V

    return-object v0
.end method
