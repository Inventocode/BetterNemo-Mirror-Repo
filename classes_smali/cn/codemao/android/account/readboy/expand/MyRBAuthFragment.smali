.class public Lcn/codemao/android/account/readboy/expand/MyRBAuthFragment;
.super Lcom/readboy/personalsettingauth/RBStandardAuthFragment;
.source "MyRBAuthFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthAgreeBtnResId()I
    .registers 2

    .line 22
    sget v0, Lcn/codemao/android/account/R$id;->auth_btn:I

    return v0
.end method

.method protected getAuthAppIconImageViewResId()I
    .registers 2

    .line 32
    sget v0, Lcn/codemao/android/account/R$id;->auth_app_icon:I

    return v0
.end method

.method protected getAuthAppNameTextViewResId()I
    .registers 2

    .line 27
    sget v0, Lcn/codemao/android/account/R$id;->auth_app_name:I

    return v0
.end method

.method protected getFrameLayoutContentViewResId()I
    .registers 2

    .line 17
    sget v0, Lcn/codemao/android/account/R$layout;->auth_layout:I

    return v0
.end method

.method protected getLoadingViewGroup()Landroid/view/ViewGroup;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

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
