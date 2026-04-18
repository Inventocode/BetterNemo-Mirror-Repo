.class final Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;
.super Ljava/lang/Object;
.source "TranscodingTransformer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TranscodingTransformerRenderersFactory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mediaClock:Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;

.field private final muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

.field private final transformation:Lcom/google/android/exoplayer2/transformer/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/transformer/MuxerWrapper;Lcom/google/android/exoplayer2/transformer/Transformation;)V
    .registers 4

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->context:Landroid/content/Context;

    .line 660
    iput-object p2, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    .line 661
    iput-object p3, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->transformation:Lcom/google/android/exoplayer2/transformer/Transformation;

    .line 662
    new-instance p1, Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->mediaClock:Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .registers 8

    .line 672
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->transformation:Lcom/google/android/exoplayer2/transformer/Transformation;

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/transformer/Transformation;->removeAudio:Z

    const/4 p3, 0x1

    if-nez p2, :cond_e

    iget-boolean p4, p1, Lcom/google/android/exoplayer2/transformer/Transformation;->removeVideo:Z

    if-eqz p4, :cond_c

    goto :goto_e

    :cond_c
    const/4 p4, 0x2

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p4, 0x1

    .line 673
    :goto_f
    new-array p4, p4, [Lcom/google/android/exoplayer2/Renderer;

    const/4 p5, 0x0

    if-nez p2, :cond_20

    .line 676
    new-instance p2, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->mediaClock:Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;-><init>(Lcom/google/android/exoplayer2/transformer/MuxerWrapper;Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;Lcom/google/android/exoplayer2/transformer/Transformation;)V

    aput-object p2, p4, p5

    goto :goto_21

    :cond_20
    const/4 p3, 0x0

    .line 679
    :goto_21
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->transformation:Lcom/google/android/exoplayer2/transformer/Transformation;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/transformer/Transformation;->removeVideo:Z

    if-nez p1, :cond_36

    .line 680
    new-instance p1, Lcom/google/android/exoplayer2/transformer/TransformerTranscodingVideoRenderer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->context:Landroid/content/Context;

    iget-object p5, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->mediaClock:Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;

    iget-object v1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerRenderersFactory;->transformation:Lcom/google/android/exoplayer2/transformer/Transformation;

    invoke-direct {p1, p2, p5, v0, v1}, Lcom/google/android/exoplayer2/transformer/TransformerTranscodingVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/transformer/MuxerWrapper;Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;Lcom/google/android/exoplayer2/transformer/Transformation;)V

    aput-object p1, p4, p3

    :cond_36
    return-object p4
.end method
