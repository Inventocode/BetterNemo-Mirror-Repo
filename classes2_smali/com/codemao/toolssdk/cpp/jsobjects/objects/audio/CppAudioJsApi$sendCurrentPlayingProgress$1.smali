.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;
.super Ljava/lang/Object;
.source "CppAudioJsApi.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->sendCurrentPlayingProgress(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

.field private lastTimeMillis:J

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/AudioOption;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_3
    :goto_3
    if-eqz v2, :cond_a9

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 97
    iget-wide v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->lastTimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_12

    goto :goto_1e

    :cond_12
    sub-long v5, v3, v5

    .line 99
    iget-object v7, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    invoke-static {v7}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->access$getIntervalTime$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    .line 97
    :goto_1e
    iput-wide v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->lastTimeMillis:J

    .line 104
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    invoke-static {v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->access$getAudioPlayer(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v0, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_a6

    .line 106
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    invoke-static {v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->access$getAudioPlayer(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->getTotalTime(Ljava/lang/String;)J

    move-result-wide v3

    long-to-float v3, v3

    .line 108
    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    invoke-static {v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->access$getAudioPlayer(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->getCurrentProgress(Ljava/lang/String;)J

    move-result-wide v4

    long-to-float v4, v4

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-nez v5, :cond_68

    const/4 v5, 0x1

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    :goto_69
    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v5, :cond_70

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_71

    :cond_70
    div-float/2addr v4, v3

    :goto_71
    const/16 v3, 0x64

    int-to-float v3, v3

    mul-float v4, v4, v3

    .line 112
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v3, v4

    cmpl-float v4, v3, v6

    if-ltz v4, :cond_83

    const/4 v2, 0x0

    .line 116
    :cond_83
    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v5, 0x7d0

    .line 118
    new-instance v6, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;

    iget-object v7, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->$options:Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1, v3}, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;-><init>(Ljava/lang/String;IF)V

    .line 116
    invoke-direct {v4, v5, v6}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$sendCurrentPlayingProgress$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    invoke-static {v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->setProgressData(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_a6
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_a9
    return-void
.end method
