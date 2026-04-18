.class public Lcom/lxj/xpopup/impl/InputConfirmPopupView;
.super Lcom/lxj/xpopup/impl/ConfirmPopupView;
.source "InputConfirmPopupView.java"


# instance fields
.field cancelListener:Lcom/lxj/xpopup/interfaces/OnCancelListener;

.field inputConfirmListener:Lcom/lxj/xpopup/interfaces/OnInputConfirmListener;

.field public inputContent:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$sl3cBMWvda4s2iBCaWSviNRLmOU(Lcom/lxj/xpopup/impl/InputConfirmPopupView;)V
    .registers 1

    invoke-direct {p0}, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->lambda$onCreate$0()V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_37

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    const-string v2, "#888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->createBitmapDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getPrimaryColor()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/lxj/xpopup/util/XPopupUtils;->createBitmapDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->createSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_37
    return-void
.end method


# virtual methods
.method protected applyDarkTheme()V
    .registers 3

    .line 69
    invoke-super {p0}, Lcom/lxj/xpopup/impl/ConfirmPopupView;->applyDarkTheme()V

    .line 70
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    const-string v1, "#888888"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 71
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    const-string v1, "#dddddd"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method protected applyLightTheme()V
    .registers 3

    .line 64
    invoke-super {p0}, Lcom/lxj/xpopup/impl/ConfirmPopupView;->applyLightTheme()V

    .line 65
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    const-string v1, "#888888"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->tv_cancel:Landroid/widget/TextView;

    if-ne p1, v0, :cond_f

    .line 85
    iget-object p1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->cancelListener:Lcom/lxj/xpopup/interfaces/OnCancelListener;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/lxj/xpopup/interfaces/OnCancelListener;->onCancel()V

    .line 86
    :cond_b
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_35

    .line 87
    :cond_f
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->tv_confirm:Landroid/widget/TextView;

    if-ne p1, v0, :cond_35

    .line 88
    iget-object p1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->inputConfirmListener:Lcom/lxj/xpopup/interfaces/OnInputConfirmListener;

    if-eqz p1, :cond_28

    .line 89
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lxj/xpopup/interfaces/OnInputConfirmListener;->onConfirm(Ljava/lang/String;)V

    .line 90
    :cond_28
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->autoDismiss:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_35
    :goto_35
    return-void
.end method

.method protected onCreate()V
    .registers 3

    .line 37
    invoke-super {p0}, Lcom/lxj/xpopup/impl/ConfirmPopupView;->onCreate()V

    .line 38
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->setVisible(Landroid/view/View;Z)V

    .line 39
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 40
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 42
    :cond_18
    iget-object v0, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->inputContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 43
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->inputContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->inputContent:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 47
    :cond_32
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getPrimaryColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->setCursorDrawableColor(Landroid/widget/EditText;I)V

    .line 48
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-nez v0, :cond_49

    .line 49
    iget-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->et_input:Landroid/widget/EditText;

    new-instance v1, Lcom/lxj/xpopup/impl/InputConfirmPopupView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/impl/InputConfirmPopupView$$ExternalSyntheticLambda0;-><init>(Lcom/lxj/xpopup/impl/InputConfirmPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method
