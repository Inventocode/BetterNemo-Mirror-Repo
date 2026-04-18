.class public final Lcom/codemao/nemo/activity/login/SetPasswordAction$onInit$textWatcher$1;
.super Ljava/lang/Object;
.source "SetPasswordAction.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/SetPasswordAction;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_36

    :cond_9
    iget-object p2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object p2

    goto :goto_18

    :cond_17
    move-object p2, p3

    :goto_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_32

    iget-object p2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/SetPasswordAction;

    invoke-virtual {p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object p2

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object p3

    :cond_2a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_32

    const/4 p2, 0x1

    goto :goto_33

    :cond_32
    const/4 p2, 0x0

    :goto_33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_36
    return-void
.end method
