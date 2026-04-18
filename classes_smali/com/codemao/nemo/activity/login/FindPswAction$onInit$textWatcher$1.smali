.class public final Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;
.super Ljava/lang/Object;
.source "FindPswAction.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/FindPswAction;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/login/FindPswAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/FindPswAction;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_e

    goto :goto_6f

    .line 100
    :cond_e
    iget-object v4, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-virtual {v4}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_1b
    move-object v4, v1

    :goto_1c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 101
    iget-object v4, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-virtual {v4}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    :cond_2f
    move-object v4, v1

    :goto_30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 102
    iget-object v4, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-virtual {v4}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v4

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_4c

    const/4 v4, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    if-eqz v4, :cond_6b

    .line 103
    iget-object v4, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-virtual {v4}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-virtual {v4}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_66

    const/4 v4, 0x1

    goto :goto_67

    :cond_66
    const/4 v4, 0x0

    :goto_67
    if-eqz v4, :cond_6b

    const/4 v4, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x0

    .line 99
    :goto_6c
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    :goto_6f
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object p1

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoginInputLayout;->getTextViewOfConfirm()Landroid/widget/TextView;

    move-result-object v1

    :cond_7b
    if-nez v1, :cond_7e

    goto :goto_ac

    .line 106
    :cond_7e
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;->this$0:Lcom/codemao/nemo/activity/login/FindPswAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object p1

    if-eqz p1, :cond_94

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_94

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v0, :cond_94

    const/4 p1, 0x1

    goto :goto_95

    :cond_94
    const/4 p1, 0x0

    :goto_95
    if-eqz p1, :cond_a8

    .line 107
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9f

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_9f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v2, 0x0

    .line 105
    :goto_a9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_ac
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
