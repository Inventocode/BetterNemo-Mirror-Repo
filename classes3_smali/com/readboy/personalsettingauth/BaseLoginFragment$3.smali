.class Lcom/readboy/personalsettingauth/BaseLoginFragment$3;
.super Ljava/lang/Object;
.source "BaseLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readboy/personalsettingauth/BaseLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 137
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$3;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$3;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {v0}, Lcom/readboy/personalsettingauth/BasePSFragment;->isFragmentDetach()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 143
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    .line 146
    :cond_10
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$3;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    .line 149
    :cond_19
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$3;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$100(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$3;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$000(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$200(Lcom/readboy/personalsettingauth/BaseLoginFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
