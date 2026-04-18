.class Lcom/codemao/toolssdk/dsp/resample/Resampler$1;
.super Ljava/lang/Object;
.source "Resampler.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/resample/SampleBuffers;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/dsp/resample/Resampler;->process(DLjava/nio/FloatBuffer;ZLjava/nio/FloatBuffer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$inputBuffer:Ljava/nio/FloatBuffer;

.field final synthetic val$outputBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsp/resample/Resampler;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .registers 4

    .line 346
    iput-object p2, p0, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;->val$inputBuffer:Ljava/nio/FloatBuffer;

    iput-object p3, p0, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;->val$outputBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeOutput([FII)V
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;->val$outputBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public getInputBufferLength()I
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;->val$inputBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getOutputBufferLength()I
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;->val$outputBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public produceInput([FII)V
    .registers 5

    .line 356
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;->val$inputBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    return-void
.end method
