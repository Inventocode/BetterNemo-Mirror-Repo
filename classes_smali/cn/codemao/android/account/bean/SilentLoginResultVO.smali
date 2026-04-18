.class public Lcn/codemao/android/account/bean/SilentLoginResultVO;
.super Lcn/codemao/android/account/bean/LoginUserInfoVO;
.source "SilentLoginResultVO.java"


# instance fields
.field private is_first_login:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;-><init>()V

    return-void
.end method


# virtual methods
.method public isIs_first_login()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/SilentLoginResultVO;->is_first_login:Z

    return v0
.end method

.method public setIs_first_login(Z)V
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/SilentLoginResultVO;->is_first_login:Z

    return-void
.end method
