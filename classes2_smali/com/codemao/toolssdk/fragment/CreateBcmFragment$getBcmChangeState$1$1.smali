.class final Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->getBcmChangeState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/GetBcmChangeStateResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 562
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/GetBcmChangeStateResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/GetBcmChangeStateResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/GetBcmChangeStateResult;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 564
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/GetBcmChangeStateResult;->getMessage()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_3e

    .line 565
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$getBcmStateChangePop$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result p1

    if-ne p1, v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    if-nez v0, :cond_43

    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 566
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showBcmStateChangeDialog(Landroid/content/Context;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$setBcmStateChangePop$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    goto :goto_43

    .line 569
    :cond_3e
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish()V

    :cond_43
    :goto_43
    return-void
.end method
