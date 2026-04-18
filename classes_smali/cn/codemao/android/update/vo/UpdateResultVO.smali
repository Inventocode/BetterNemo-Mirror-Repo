.class public Lcn/codemao/android/update/vo/UpdateResultVO;
.super Ljava/lang/Object;
.source "UpdateResultVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field appName:Ljava/lang/String;

.field forceUpdate:Z

.field md5:Ljava/lang/String;

.field minVersion:I

.field newVersion:Ljava/lang/String;

.field pkgSize:D

.field pkgUrl:Ljava/lang/String;

.field updateDesc:Ljava/lang/String;

.field versionCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcn/codemao/android/update/vo/UpdateResultVO;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcn/codemao/android/update/vo/UpdateResultVO;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgSize()D
    .registers 3

    .line 50
    iget-wide v0, p0, Lcn/codemao/android/update/vo/UpdateResultVO;->pkgSize:D

    return-wide v0
.end method

.method public getPkgUrl()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcn/codemao/android/update/vo/UpdateResultVO;->pkgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDesc()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcn/codemao/android/update/vo/UpdateResultVO;->updateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .line 74
    iget v0, p0, Lcn/codemao/android/update/vo/UpdateResultVO;->versionCode:I

    return v0
.end method

.method public isForceUpdate()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lcn/codemao/android/update/vo/UpdateResultVO;->forceUpdate:Z

    return v0
.end method
