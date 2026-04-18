.class public final Lcn/codemao/android/account/tccapture/PadTCCaptchaActivity;
.super Lcn/codemao/android/account/tccapture/TCCaptchaActivity;
.source "PadTCCaptchaActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lcn/codemao/android/account/util/ActivityCore;->isTranslucentOrFloating(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 44
    invoke-static {p0}, Lcn/codemao/android/account/util/ActivityCore;->fixOrientation(Landroid/app/Activity;)Z

    .line 46
    :cond_f
    invoke-super {p0, p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
