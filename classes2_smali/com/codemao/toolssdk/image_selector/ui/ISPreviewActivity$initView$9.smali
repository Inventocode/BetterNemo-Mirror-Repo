.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;
.super Ljava/lang/Object;
.source "ISPreviewActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;->$commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;->$commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;->$commonConfirmPop:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_d
    return-void
.end method

.method public onConfirmClick()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->access$updateConstantImageList(Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;)V

    .line 338
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 339
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$initView$9;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->finish()V

    return-void
.end method
