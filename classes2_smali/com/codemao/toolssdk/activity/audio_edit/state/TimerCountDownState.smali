.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;
.super Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;
.source "TimerCountDownState.kt"


# instance fields
.field private count:I

.field private final countDownRunnable:Ljava/lang/Runnable;

.field private final tvCountDown:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$IY_zpaKikqNrlcpHKWwAS2wejGA(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->updateUI$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7vGS1n3gWSuOM_b6GSST6az1QU(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->countDownRunnable$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    .line 18
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvCountDown:Landroid/widget/TextView;

    const-string v1, "activity.dataBinding.tvCountDown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    const/4 v0, 0x3

    .line 19
    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->count:I

    .line 21
    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->countDownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final countDownRunnable$lambda$0(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->count:I

    if-gez v0, :cond_19

    .line 23
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->nextStep()V

    return-void

    :cond_19
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_22

    const/4 v3, 0x4

    if-ge v0, v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_2f

    .line 29
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v1

    .line 30
    sget v3, Lcom/codemao/toolssdk/R$raw;->toolsdk_start_count_down:I

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->openRawMusic(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 32
    :cond_2f
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x3e8

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->startCountDown(J)V

    return-void
.end method

.method private final startCountDown(J)V
    .registers 5

    .line 73
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->count:I

    .line 74
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final updateUI$lambda$1(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 60
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public nextStep()V
    .registers 4

    .line 78
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "倒计时结束,进入录音状态"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->setCurrentState(Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 83
    invoke-super {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->onStop()V

    .line 84
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public updateUI()V
    .registers 5

    .line 37
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->progress:Lcom/codemao/toolssdk/view/progress/CircleProgressView;

    const-string v1, "activity.dataBinding.progress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->recordTimerTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->recordTimerTitle:Landroid/widget/TextView;

    sget v3, Lcom/codemao/toolssdk/R$string;->toolsdk_record_count_down:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSaveRecord:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->viewRed:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivSure:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvToEditPage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->bottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->musicEditGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->editMusicName:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivExit:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->viewRed:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->tvCountDown:Landroid/widget/TextView;

    iget v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getRecordTime()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->setMaxProgress(I)V

    .line 67
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->setProgress(I)V

    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;->startCountDown(J)V

    return-void
.end method
