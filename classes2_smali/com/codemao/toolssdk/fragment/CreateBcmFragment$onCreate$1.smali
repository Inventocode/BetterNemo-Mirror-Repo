.class public final Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onCreate$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "CreateBcmFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onCreate$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    const/4 p1, 0x1

    .line 270
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onCreate$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->canShowExitPop()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onCreate$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$closePage(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    :cond_d
    return-void
.end method
