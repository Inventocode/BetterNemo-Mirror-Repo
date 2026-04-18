.class public Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "UserAgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private agreeListener:Landroid/view/View$OnClickListener;

.field private disagreeListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected applySize(Z)V
    .registers 8

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    .line 81
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    .line 85
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_4a

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isNavBarVisible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :cond_4a
    :goto_4a
    if-nez v0, :cond_5c

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_71

    :cond_5c
    const/4 p1, 0x1

    if-eq v0, p1, :cond_62

    const/4 p1, 0x3

    if-ne v0, p1, :cond_71

    .line 93
    :cond_62
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_71
    :goto_71
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d0132

    return v0
.end method

.method protected initPopupContent()V
    .registers 2

    .line 62
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    const v0, 0x7f0a089b

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07fe

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07ea

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07ec

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07ed

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_4c

    goto :goto_4a

    .line 101
    :sswitch_9
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;->disagreeListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_18

    const/4 p1, 0x0

    .line 102
    invoke-static {p1}, Lcom/codemao/nemo/http/PolicyUtils;->savePolicyState(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 104
    invoke-static {v1}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    goto :goto_4a

    .line 106
    :cond_18
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4a

    .line 111
    :sswitch_1c
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->updatePrivacyShow()V

    .line 112
    sput-boolean v1, Lcom/codemao/nemo/util/SystemUtil;->isNeedToUpdateHeader:Z

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;->agreeListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_2f

    const/4 p1, 0x0

    .line 114
    invoke-static {p1}, Lcom/codemao/nemo/http/PolicyUtils;->setPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    .line 115
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_4a

    .line 117
    :cond_2f
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4a

    .line 129
    :sswitch_33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/WebUtil;->goKidsInfoProtection(Landroid/content/Context;)V

    goto :goto_4a

    .line 126
    :sswitch_3b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/WebUtil;->goPrivateProvision(Landroid/content/Context;)V

    goto :goto_4a

    .line 122
    :sswitch_43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/WebUtil;->goUserAgreement(Landroid/content/Context;)V

    :goto_4a
    return-void

    nop

    :sswitch_data_4c
    .sparse-switch
        0x7f0a07ea -> :sswitch_43
        0x7f0a07ec -> :sswitch_3b
        0x7f0a07ed -> :sswitch_33
        0x7f0a07fe -> :sswitch_1c
        0x7f0a089b -> :sswitch_9
    .end sparse-switch
.end method

.method public setAgreeListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;->agreeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setDisagreeListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;->disagreeListener:Landroid/view/View$OnClickListener;

    return-void
.end method
