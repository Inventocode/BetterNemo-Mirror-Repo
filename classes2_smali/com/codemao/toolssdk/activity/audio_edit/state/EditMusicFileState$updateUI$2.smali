.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;
.super Ljava/lang/Object;
.source "EditMusicFileState.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private preSeconds:F

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekChange(F)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 99
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->preSeconds:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42480000  # 50.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_17

    .line 100
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$stopPlayingAudio(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 101
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$resetPlayState(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 104
    :cond_17
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getCurrentCutOutDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$formatRecordFileDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;F)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkFasterEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 107
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkLowerEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    return-void
.end method

.method public onSeekEnd(F)V
    .registers 3

    .line 111
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->preSeconds:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-eqz p1, :cond_c

    return-void

    .line 112
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$generateNewStep(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$updateCurrentStepMusicClipMs(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 114
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$pointToNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    .line 115
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$playWithNewDbSPLData(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 116
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$updateUndoRecoverStepsUI(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    return-void
.end method

.method public onSeekStart(F)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$2;->preSeconds:F

    return-void
.end method
