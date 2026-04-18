.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;
.super Ljava/lang/Object;
.source "ModifyRecordFileState.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private preSeconds:F

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    .line 144
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

    .line 149
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->preSeconds:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000  # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    .line 150
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$stopPlayingAudio(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$resetPlayState(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    .line 154
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTotalDuration:Landroid/widget/TextView;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {v2, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$formatRecordFileDuration(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;F)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p1, 0x73

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSeekEnd(F)V
    .registers 3

    .line 159
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->preSeconds:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-eqz p1, :cond_c

    return-void

    .line 160
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->access$playMusic(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;)V

    return-void
.end method

.method public onSeekStart(F)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$4;->preSeconds:F

    return-void
.end method
