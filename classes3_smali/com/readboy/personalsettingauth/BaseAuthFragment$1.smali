.class Lcom/readboy/personalsettingauth/BaseAuthFragment$1;
.super Landroid/os/Handler;
.source "BaseAuthFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseAuthFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {v0}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 123
    :cond_c
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_2c

    .line 124
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    iget-object v0, p1, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    .line 127
    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$000(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Lretrofit2/Call;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 128
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->access$000(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 130
    :cond_27
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showFail()V

    :cond_2c
    return-void
.end method
