.class Lcom/readboy/personalsettingauth/BaseLoginFragment$4;
.super Ljava/lang/Object;
.source "BaseLoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 160
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    .line 172
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$100(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 175
    :cond_9
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$100(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$000(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    .line 176
    :goto_2e
    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment$4;->this$0:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-static {v1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->access$300(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    xor-int/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->setCommonButtonEnable(Landroid/view/View;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
