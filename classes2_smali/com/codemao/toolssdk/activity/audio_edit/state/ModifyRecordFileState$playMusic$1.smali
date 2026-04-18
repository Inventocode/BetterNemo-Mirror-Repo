.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;
.super Ljava/lang/Object;
.source "ModifyRecordFileState.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->playMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayComplete()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getCurrentState()Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;

    if-nez v0, :cond_22

    .line 209
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutState()V

    .line 210
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$resetPlayState(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    :cond_22
    return-void
.end method

.method public onPlayFail()V
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutState()V

    .line 216
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$resetPlayState(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    return-void
.end method

.method public onPlayStart()V
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->vMusicCutout:Lcom/codemao/toolssdk/view/customize/MusicCutOutView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingState()V

    .line 221
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$playMusic$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$showStopPlayingState(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    return-void
.end method
