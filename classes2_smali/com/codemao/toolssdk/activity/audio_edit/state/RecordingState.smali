.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;
.super Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;
.source "RecordingState.kt"


# instance fields
.field private dispatcher:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

.field private hasInitListener:Z

.field private recordDuration:D

.field private savePath:Ljava/lang/String;

.field private totalDuration:F


# direct methods
.method public static synthetic $r8$lambda$5e9l7qF8PCURxWNVY3-BAeNYeGQ(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->startRecord$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H621i6XeYZYI64Q0hph27oW2I_Q(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->resetExitListener$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TA5bFxcPdUOcHXCaF6QQFUz08Fk(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->updateUI$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBIseYb5bg2VbT4-VCYKlq6y4Pc(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->intRedBtnListener$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    return-void
.end method

.method public static final synthetic access$getHasInitListener$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->hasInitListener:Z

    return p0
.end method

.method public static final synthetic access$getTotalDuration$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)F
    .registers 1

    .line 22
    iget p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->totalDuration:F

    return p0
.end method

.method public static final synthetic access$intRedBtnListener(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->intRedBtnListener()V

    return-void
.end method

.method public static final synthetic access$resetExitListener(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->resetExitListener()V

    return-void
.end method

.method public static final synthetic access$setHasInitListener$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->hasInitListener:Z

    return-void
.end method

.method public static final synthetic access$setTotalDuration$p(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;F)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->totalDuration:F

    return-void
.end method

.method public static final synthetic access$stopRecord(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->stopRecord()V

    return-void
.end method

.method private final intRedBtnListener()V
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->viewRed:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final intRedBtnListener$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->stopRecord()V

    return-void
.end method

.method private final resetExitListener()V
    .registers 3

    .line 62
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivExit:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final resetExitListener$lambda$2(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->stopRecord()V

    .line 64
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    const-class p1, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->checkShowSaveDialogOrFinish(Ljava/lang/Class;)V

    return-void
.end method

.method private final startRecord()V
    .registers 2

    .line 69
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final startRecord$lambda$3(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 72
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 80
    :try_start_15
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v4

    const/4 v5, 0x0

    .line 79
    invoke-static {v4, v2, v3, v5}, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->fromDefaultMicrophone(Landroid/content/Context;III)Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move-result-object v3

    iput-object v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->dispatcher:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v3, :cond_2a

    .line 82
    new-instance v4, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$startRecord$1$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;JI)V

    invoke-virtual {v3, v4}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 121
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "music_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getFileCacheDir()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->savePath:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->generateRandomAccessFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->dispatcher:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v1, :cond_81

    new-instance v2, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    move-result-object v3

    goto :goto_7b

    :cond_7a
    const/4 v3, 0x0

    :goto_7b
    invoke-direct {v2, v3, v0}, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;Ljava/io/RandomAccessFile;)V

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 125
    :cond_81
    iget-object p0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->dispatcher:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->run()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private final stopRecord()V
    .registers 3

    .line 137
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getCurrentState()Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    if-eqz v0, :cond_1d

    .line 138
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "stop录音"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->dispatcher:Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stop()V

    .line 140
    :cond_1a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->nextStep()V

    :cond_1d
    return-void
.end method

.method private static final updateUI$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;Landroid/media/MediaPlayer;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->startRecord()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->recordDuration:D

    return-void
.end method


# virtual methods
.method public final getRecordDuration()D
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->recordDuration:D

    return-wide v0
.end method

.method public final interruptRecord()V
    .registers 1

    .line 133
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->stopRecord()V

    return-void
.end method

.method public nextStep()V
    .registers 6

    .line 145
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "进入录音生成状态"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/GenerateRecordFileState;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->savePath:Ljava/lang/String;

    iget v4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->totalDuration:F

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/toolssdk/activity/audio_edit/state/GenerateRecordFileState;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->setCurrentState(Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;)V

    return-void
.end method

.method public final setRecordDuration(D)V
    .registers 3

    .line 28
    iput-wide p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->recordDuration:D

    return-void
.end method

.method public updateUI()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvCountDown:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->recordTimerTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    const-string v3, "0.00 / 60s"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->progress:Lcom/codemao/toolssdk/view/progress/CircleProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSaveRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->viewRed:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->viewRed:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-boolean v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;->hasInitListener:Z

    .line 47
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    sget v2, Lcom/codemao/toolssdk/R$raw;->toolsdk_timer_start_recording:I

    .line 47
    new-instance v3, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->openRawMusic(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method
