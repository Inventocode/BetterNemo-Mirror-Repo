.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;
.super Ljava/lang/Object;
.source "AiImageGenerateStyleActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initCommonConfirmPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$getCommonConfirmPop$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "commonConfirmPop"

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_f
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 487
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$getCommonConfirmPop$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v1, v0

    :goto_22
    invoke-virtual {v1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_25
    return-void
.end method

.method public onConfirmClick()V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 482
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initCommonConfirmPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
