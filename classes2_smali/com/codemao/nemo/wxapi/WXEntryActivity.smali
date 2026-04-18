.class public Lcom/codemao/nemo/wxapi/WXEntryActivity;
.super Lcn/codemao/android/account/wxapi/WechatActivity;
.source "WXEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcn/codemao/android/account/wxapi/WechatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 31
    invoke-super {p0, p1}, Lcn/codemao/android/account/wxapi/WechatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/codemao/nemo/util/ActivityUtils;->convertActivityToTranslucent(Landroid/app/Activity;)V

    .line 33
    invoke-static {p0}, Lcom/codemao/nemo/util/ToolUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    return-void
.end method
