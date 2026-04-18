.class Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;
.super Ljava/lang/Object;
.source "SoftJitterCorrector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;-><init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 129
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget-object v1, v1, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 131
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v3

    div-int/2addr v1, v3

    int-to-double v3, v1

    const-wide v5, 0x41cdcd6500000000L  # 1.0E9

    mul-double v3, v3, v5

    .line 133
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    float-to-double v0, v0

    div-double/2addr v3, v0

    double-to-long v0, v3

    .line 134
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long/2addr v3, v0

    const/4 v5, 0x0

    .line 138
    :goto_2a
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    monitor-enter v6

    .line 139
    :try_start_2d
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget-boolean v8, v7, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->active:Z

    if-nez v8, :cond_35

    .line 140
    monitor-exit v6

    return-void

    .line 141
    :cond_35
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_e6

    .line 143
    iget-object v7, v7, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    monitor-enter v7

    .line 144
    :try_start_39
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget v8, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    iget v9, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int/2addr v8, v9

    if-nez v5, :cond_6d

    .line 146
    iget v9, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w:I

    .line 147
    iget v10, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min:I

    const v11, 0x7fffffff

    if-eq v10, v11, :cond_6d

    .line 148
    iget v12, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_count:I

    if-ne v9, v12, :cond_6d

    .line 150
    iget v5, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min_tol:I

    if-ge v10, v5, :cond_5e

    .line 151
    iget v9, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_max_tol:I

    add-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v10

    goto :goto_5f

    :cond_5e
    const/4 v9, 0x0

    .line 154
    :goto_5f
    iget v12, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_max_tol:I

    if-le v10, v12, :cond_68

    add-int/2addr v5, v12

    .line 155
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v10

    goto :goto_69

    :cond_68
    move v5, v9

    .line 158
    :goto_69
    iput v2, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w:I

    .line 159
    iput v11, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min:I

    .line 163
    :cond_6d
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_39 .. :try_end_6e} :catchall_e3

    .line 164
    :goto_6e
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget v7, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_max:I

    if-le v8, v7, :cond_97

    .line 165
    iget-object v6, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    monitor-enter v6

    .line 166
    :try_start_77
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget v8, v7, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    iget v9, v7, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int/2addr v8, v9

    .line 167
    monitor-exit v6
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_94

    .line 168
    monitor-enter v7

    .line 169
    :try_start_80
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget-boolean v6, v6, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->active:Z

    if-nez v6, :cond_88

    .line 170
    monitor-exit v7

    goto :goto_97

    .line 171
    :cond_88
    monitor-exit v7
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_91

    const-wide/16 v6, 0x1

    .line 173
    :try_start_8b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_6e

    :catch_8f
    nop

    goto :goto_6e

    :catchall_91
    move-exception v0

    .line 171
    :try_start_92
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0

    :catchall_94
    move-exception v0

    .line 167
    :try_start_95
    monitor-exit v6
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    :cond_97
    :goto_97
    if-gez v5, :cond_9c

    add-int/lit8 v5, v5, 0x1

    goto :goto_c4

    .line 182
    :cond_9c
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    invoke-virtual {v6}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->nextWriteBuffer()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 185
    :goto_a3
    :try_start_a3
    array-length v8, v6

    if-eq v7, v8, :cond_bf

    .line 186
    iget-object v8, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    iget-object v8, v8, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    array-length v9, v6

    sub-int/2addr v9, v7

    invoke-virtual {v8, v6, v7, v9}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_b9

    if-nez v8, :cond_b7

    .line 191
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_b7
    add-int/2addr v7, v8

    goto :goto_a3

    .line 189
    :cond_b9
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_bf} :catch_bf

    .line 197
    :catch_bf
    :cond_bf
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;->this$0:Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    invoke-virtual {v6}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->commit()V

    :goto_c4
    if-lez v5, :cond_cf

    add-int/lit8 v5, v5, -0x1

    .line 202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    :catch_cc
    :cond_cc
    :goto_cc
    add-long/2addr v3, v0

    goto/16 :goto_2a

    .line 205
    :cond_cf
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v3, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_cc

    const-wide/32 v8, 0xf4240

    .line 208
    :try_start_de
    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e2
    .catch Ljava/lang/InterruptedException; {:try_start_de .. :try_end_e2} :catch_cc

    goto :goto_cc

    :catchall_e3
    move-exception v0

    .line 163
    :try_start_e4
    monitor-exit v7
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0

    :catchall_e6
    move-exception v0

    .line 141
    :try_start_e7
    monitor-exit v6
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v0
.end method
