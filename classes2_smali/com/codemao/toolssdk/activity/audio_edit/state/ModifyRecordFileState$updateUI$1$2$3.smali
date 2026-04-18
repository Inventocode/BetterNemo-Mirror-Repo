.class final Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ModifyRecordFileState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;->$isCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->dismissGeneratingMusicPop()V

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;->$isCanceled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_10

    return-void

    .line 115
    :cond_10
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState$updateUI$1$2$3;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/state/ModifyRecordFileState;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "上传超时，请检查网络"

    .line 114
    invoke-static {v0, v2, v1}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
