.class public Lcn/codemao/android/account/readboy/expand/MyRBLoginFragment;
.super Lcom/readboy/personalsettingauth/RBStandardLoginFragment;
.source "MyRBLoginFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/RBStandardLoginFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrameLayoutContentViewResId()I
    .registers 2

    .line 17
    sget v0, Lcn/codemao/android/account/R$layout;->login_layout:I

    return v0
.end method

.method protected getLoadingViewGroup()Landroid/view/ViewGroup;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/codemao/android/account/R$layout;->load_layout:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getLoginAccountEditResId()I
    .registers 2

    .line 22
    sget v0, Lcn/codemao/android/account/R$id;->login_account_edit_view:I

    return v0
.end method

.method protected getLoginLoginBtnResId()I
    .registers 2

    .line 32
    sget v0, Lcn/codemao/android/account/R$id;->login_btn:I

    return v0
.end method

.method protected getLoginPasswordEditResId()I
    .registers 2

    .line 27
    sget v0, Lcn/codemao/android/account/R$id;->login_pw_edit_view:I

    return v0
.end method
