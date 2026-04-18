.class Lcom/readboy/personalsettingauth/BaseLoginFragment$1;
.super Landroid/os/Handler;
.source "BaseLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseLoginFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {v0}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 103
    :cond_c
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_24

    .line 104
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$000(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 105
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$000(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_42

    :cond_24
    const/16 v0, 0x101

    if-ne p1, v0, :cond_42

    .line 108
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    iget-object v0, p1, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_42

    const/16 v0, 0x198

    .line 109
    sget v1, Lcom/readboy/personalsettingauth/R$string;->msg_login_net_service_time_out:I

    invoke-virtual {p1, v1}, Lcom/readboy/personalsettingauth/BasePSFragment;->getResString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginNetFailed(ILjava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    iget-object p1, p1, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_42
    :goto_42
    return-void
.end method
