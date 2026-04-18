.class public final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;
.super Ljava/lang/Object;
.source "AudioEditableActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->initPopupWindow(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;->$commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;->$commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 295
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;->$commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_d
    return-void
.end method

.method public onConfirmClick()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 290
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initPopupWindow$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
