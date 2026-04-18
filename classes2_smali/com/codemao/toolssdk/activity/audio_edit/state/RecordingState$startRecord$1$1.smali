.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;
.super Ljava/lang/Object;
.source "RecordingState.kt"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/AudioProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sampleRate:I

.field final synthetic $startMillis:J

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

.field private totalSamples:I


# direct methods
.method public static synthetic $r8$lambda$24JmeagJEpnh62GU5z6HrQcqmrU(JLcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;F)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->process$lambda$0(JLcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$8oBPnShvYSQBm2Fms00G_UyrFVI(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->processingFinished$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;JI)V
    .registers 5

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    iput-wide p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->$startMillis:J

    iput p4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->$sampleRate:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final process$lambda$0(JLcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;F)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    .line 92
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getRecordTime()I

    move-result p0

    const/16 p1, 0x3e8

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_93

    const/16 p0, 0xa

    int-to-long v2, p0

    mul-long v2, v2, v0

    int-to-long p0, p1

    .line 93
    div-long/2addr v2, p0

    long-to-int p0, v2

    int-to-double p0, p0

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    div-double/2addr p0, v2

    const-wide v2, 0x3fe6666666666666L  # 0.7

    const/4 v4, 0x1

    cmpl-double v5, p0, v2

    if-ltz v5, :cond_3c

    .line 94
    invoke-static {p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->access$getHasInitListener$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 95
    invoke-static {p2, v4}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->access$setHasInitListener$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Z)V

    .line 96
    invoke-static {p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->access$intRedBtnListener(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    .line 97
    invoke-static {p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->access$resetExitListener(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    .line 99
    :cond_3c
    invoke-virtual {p2, p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->setRecordDuration(D)V

    .line 100
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "当前录音时间:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "s / 60s"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->progress:Lcom/codemao/toolssdk/view/progress/CircleProgressView;

    const/16 p1, 0x64

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->setProgress(I)V

    .line 103
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {p0, p3, v4}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->pushVolumeData(FZ)V

    goto :goto_96

    .line 105
    :cond_93
    invoke-static {p2}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->access$stopRecord(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    :goto_96
    return-void
.end method

.method private static final processingFinished$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutState()V

    .line 117
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    const-string v0, "activity.dataBinding.vMusicCutout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->reTidyData$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "audioEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->totalSamples:I

    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->totalSamples:I

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->calculateRecordVolume(Lcom/codemao/toolssdk/dsp/AudioEvent;)F

    move-result p1

    .line 89
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->$startMillis:J

    iget-object v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    new-instance v4, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, v3, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1$$ExternalSyntheticLambda0;-><init>(JLcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;F)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public processingFinished()V
    .registers 4

    .line 112
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->totalSamples:I

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->$sampleRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 113
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    const/16 v2, 0x3e8

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-static {v1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->access$setTotalDuration$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;F)V

    .line 114
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    invoke-static {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->access$getTotalDuration$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->setTotalSeconds(F)V

    .line 115
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
