.class public final Lcom/codemao/toolssdk/fragment/CreateBcmFragment$showLoadingDialog$1$1;
.super Ljava/lang/Object;
.source "CreateBcmFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$showLoadingDialog$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$showLoadingDialog$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_b
    return-void
.end method

.method public onRetry()V
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$showLoadingDialog$1$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->loadCMTools()V

    return-void
.end method
