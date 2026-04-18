.class public Lcn/codemao/android/share/QQshare;
.super Ljava/lang/Object;
.source "QQshare.java"

# interfaces
.implements Lcn/codemao/android/share/interfaces/Ishare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/share/QQshare$MUiListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private mUiListener:Lcn/codemao/android/share/QQshare$MUiListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcn/codemao/android/share/bean/ShareConfig;->QQId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 35
    iput-object p1, p0, Lcn/codemao/android/share/QQshare;->mActivity:Landroid/app/Activity;

    .line 36
    sget-object v0, Lcn/codemao/android/share/bean/ShareConfig;->QQId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/share/QQshare;->mTencent:Lcom/tencent/tauth/Tencent;

    const/4 p1, 0x1

    .line 37
    invoke-static {p1}, Lcom/tencent/tauth/Tencent;->setIsPermissionGranted(Z)V

    return-void

    .line 33
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "QQId is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private shareToQQ(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 5

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    new-instance v1, Lcn/codemao/android/share/QQshare$MUiListener;

    invoke-direct {v1, p0, p2}, Lcn/codemao/android/share/QQshare$MUiListener;-><init>(Lcn/codemao/android/share/QQshare;Lcn/codemao/android/share/interfaces/IshareResult;)V

    iput-object v1, p0, Lcn/codemao/android/share/QQshare;->mUiListener:Lcn/codemao/android/share/QQshare$MUiListener;

    const-string p2, "req_type"

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareTitle()Ljava/lang/String;

    move-result-object p2

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareLink()Ljava/lang/String;

    move-result-object p2

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareText()Ljava/lang/String;

    move-result-object p2

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareImgURL()Ljava/lang/String;

    move-result-object p1

    const-string p2, "imageUrl"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcn/codemao/android/share/QQshare;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object p2, p0, Lcn/codemao/android/share/QQshare;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/codemao/android/share/QQshare;->mUiListener:Lcn/codemao/android/share/QQshare$MUiListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private shareToQzeon(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 5

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    new-instance v1, Lcn/codemao/android/share/QQshare$MUiListener;

    invoke-direct {v1, p0, p2}, Lcn/codemao/android/share/QQshare$MUiListener;-><init>(Lcn/codemao/android/share/QQshare;Lcn/codemao/android/share/interfaces/IshareResult;)V

    iput-object v1, p0, Lcn/codemao/android/share/QQshare;->mUiListener:Lcn/codemao/android/share/QQshare$MUiListener;

    const-string p2, "req_type"

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareTitle()Ljava/lang/String;

    move-result-object p2

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareLink()Ljava/lang/String;

    move-result-object p2

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareText()Ljava/lang/String;

    move-result-object p2

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareImgURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 78
    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareImgURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    const-string p1, "imageUrl"

    .line 79
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    iget-object p1, p0, Lcn/codemao/android/share/QQshare;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object p2, p0, Lcn/codemao/android/share/QQshare;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/codemao/android/share/QQshare;->mUiListener:Lcn/codemao/android/share/QQshare$MUiListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcn/codemao/android/share/QQshare;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcn/codemao/android/share/QQshare;->mUiListener:Lcn/codemao/android/share/QQshare$MUiListener;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcn/codemao/android/share/QQshare;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onShare(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 5

    .line 42
    iget-object v0, p0, Lcn/codemao/android/share/QQshare;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcn/codemao/android/share/QQshare;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_12

    const-string/jumbo p1, "您的设备尚未安装QQ"

    .line 44
    invoke-interface {p2, p1}, Lcn/codemao/android/share/interfaces/IshareResult;->onFailure(Ljava/lang/String;)V

    :cond_12
    return-void

    .line 48
    :cond_13
    sget-object v0, Lcn/codemao/android/share/QQshare$1;->$SwitchMap$cn$codemao$android$share$bean$ShareMedia:[I

    invoke-interface {p1}, Lcn/codemao/android/share/interfaces/IshareInfo;->getShareMedia()Lcn/codemao/android/share/bean/ShareMedia;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    goto :goto_2d

    .line 53
    :cond_26
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/share/QQshare;->shareToQzeon(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto :goto_2d

    .line 50
    :cond_2a
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/share/QQshare;->shareToQQ(Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    :goto_2d
    return-void
.end method
