.class public final Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onCreate$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "CreateBcmFragment2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onCreate$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    const/4 p1, 0x1

    .line 276
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onCreate$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->canShowExitPop()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 279
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onCreate$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->access$closePage(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    :cond_d
    return-void
.end method
