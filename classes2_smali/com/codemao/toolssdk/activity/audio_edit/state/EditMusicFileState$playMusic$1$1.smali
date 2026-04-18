.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;
.super Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;
.source "EditMusicFileState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->playMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $endPositionMs:I

.field final synthetic $playedComplete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $playedOnStart:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isEnd:Z

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;


# direct methods
.method public static synthetic $r8$lambda$8o1SwH0mXJRqLKEUd9yZLbnfBwA(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->processingFinished$lambda$1(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tGbrXNN8wFqNUdhMXRoHy7Dopy8(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->onPlayStart$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;ILcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IJJ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;",
            "I",
            "Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;IJJ)V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p3

    iput-object v0, v8, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    move-object v0, p4

    iput-object v0, v8, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->$playedOnStart:Lkotlin/jvm/functions/Function0;

    move-object v0, p5

    iput-object v0, v8, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->$playedComplete:Lkotlin/jvm/functions/Function0;

    move v0, p6

    iput v0, v8, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->$endPositionMs:I

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    .line 667
    invoke-direct/range {v0 .. v7}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;IIJJ)V

    return-void
.end method

.method private static final onPlayStart$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$playedOnStart"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final processingFinished$lambda$1(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;I)V
    .registers 5

    const-string v0, "$playedComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 699
    iget-boolean p0, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->isEnd:Z

    if-eqz p0, :cond_24

    .line 700
    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->updatePlayingIndex(F)V

    :cond_24
    return-void
.end method


# virtual methods
.method public onPlayEnd()V
    .registers 2

    const/4 v0, 0x1

    .line 691
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->isEnd:Z

    return-void
.end method

.method public onPlayStart()V
    .registers 4

    const/4 v0, 0x0

    .line 684
    iput-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->isEnd:Z

    .line 685
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->$playedOnStart:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 5

    .line 677
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getPlayingThread$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_15

    return v2

    .line 680
    :cond_15
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z

    move-result p1

    return p1
.end method

.method public processingFinished()V
    .registers 6

    .line 695
    invoke-super {p0}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->processingFinished()V

    .line 696
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getAdp$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->removeAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 697
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->$playedComplete:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    iget v3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;->$endPositionMs:I

    new-instance v4, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, p0, v2, v3}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$playMusic$1$1;Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
