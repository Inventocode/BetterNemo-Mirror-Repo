.class final Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;
.super Lkotlin/jvm/internal/Lambda;
.source "EditMusicFileState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 155
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$isAnalyzingData$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 160
    :cond_e
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$setAnalyzingData$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Z)V

    .line 161
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$generateNewStep(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivFaster:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvFaster:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 164
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$getCurrentActionStep$p(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->getSpeed()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->setSpeed(I)V

    .line 165
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkLowerEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 166
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$checkFasterEnable(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;)V

    .line 167
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState$updateUI$7;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;->access$updateStatus(Lcom/codemao/toolssdk/activity/audio_edit/state/EditMusicFileState;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method
