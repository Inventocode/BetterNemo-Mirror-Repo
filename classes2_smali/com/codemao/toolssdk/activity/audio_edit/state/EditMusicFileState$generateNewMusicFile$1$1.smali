.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;
.super Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;
.source "EditMusicFileState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->generateNewMusicFile(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $endSamples:J

.field final synthetic $mp3FilePath:Ljava/lang/String;

.field final synthetic $startSamples:J

.field final synthetic $wavFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

.field private totalSamples:J


# direct methods
.method public static synthetic $r8$lambda$Jdx8Fao2hPywTzbUDp0NLGxsIJQ(Lkotlin/jvm/functions/Function1;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->processingFinished$lambda$1(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hcnbhuAf2BmOocVQT2lXT-vsXr4(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->processingFinished$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;JJLcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "JJ",
            "Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;",
            ")V"
        }
    .end annotation

    iput-wide p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$startSamples:J

    iput-wide p4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$endSamples:J

    iput-object p6, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    iput-object p7, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$wavFilePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$mp3FilePath:Ljava/lang/String;

    iput-object p9, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 764
    invoke-direct {p0, p10, p1}, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method private static final processingFinished$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .registers 3

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mp3FilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final processingFinished$lambda$1(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 815
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 13

    const-string v0, "audioEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getOverlap()I

    move-result v0

    .line 769
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getBufferSize()I

    move-result v1

    sub-int/2addr v1, v0

    .line 770
    iget-wide v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$startSamples:J

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6e

    iget-wide v6, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$endSamples:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_6e

    .line 771
    iget-wide v4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->totalSamples:J

    int-to-long v8, v1

    add-long/2addr v8, v4

    .line 772
    iput-wide v8, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->totalSamples:J

    const/4 v1, 0x0

    cmp-long v10, v4, v2

    if-gtz v10, :cond_2e

    cmp-long v10, v2, v8

    if-gez v10, :cond_2e

    const/4 v10, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v10, 0x0

    :goto_2f
    if-eqz v10, :cond_46

    .line 774
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v2

    .line 776
    iget-wide v6, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->totalSamples:J

    iget-wide v8, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$startSamples:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    new-array v6, v3, [F

    sub-long/2addr v8, v4

    long-to-int v4, v8

    .line 777
    invoke-static {v2, v4, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    invoke-virtual {p1, v6}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setFloatBuffer([F)V

    goto :goto_6e

    :cond_46
    cmp-long v10, v8, v2

    if-gez v10, :cond_4b

    return v0

    :cond_4b
    cmp-long v2, v4, v6

    if-gtz v2, :cond_55

    cmp-long v2, v6, v8

    if-gez v2, :cond_55

    const/4 v2, 0x1

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    if-eqz v2, :cond_69

    .line 788
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v2

    .line 790
    iget-wide v6, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$endSamples:J

    sub-long/2addr v6, v4

    long-to-int v3, v6

    new-array v4, v3, [F

    .line 791
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    invoke-virtual {p1, v4}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setFloatBuffer([F)V

    goto :goto_6e

    :cond_69
    cmp-long v2, v8, v6

    if-lez v2, :cond_6e

    return v1

    .line 799
    :cond_6e
    :goto_6e
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z

    return v0
.end method

.method public processingFinished()V
    .registers 5

    .line 804
    invoke-super {p0}, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->processingFinished()V

    .line 805
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$isGenerateCanceled$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 807
    :try_start_b
    sget-object v0, Lcom/codemao/toolssdk/FFmpegCallback;->INSTANCE:Lcom/codemao/toolssdk/FFmpegCallback;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/FFmpegCallback;->getCallBack()Lcom/codemao/toolssdk/FFmpegCallback$CallBack;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$wavFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -codec:a libmp3lame -qscale:a 9 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$mp3FilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/FFmpegCallback$CallBack;->execute(Ljava/lang/String;)V

    .line 808
    :cond_33
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$wavFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 809
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$mp3FilePath:Ljava/lang/String;

    new-instance v3, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_50

    goto :goto_64

    :catch_50
    move-exception v0

    .line 813
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$generateNewMusicFile$1$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_64
    :goto_64
    return-void
.end method
