.class public Lcom/codemao/creativestore/bean/BcmVersionInfo;
.super Ljava/lang/Object;
.source "BcmVersionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bcm_version:Ljava/lang/String;

.field private user_db_version:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBcm_version()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_db_version()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->user_db_version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setUser_db_version(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->user_db_version:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVersionInfo;->versionCode:Ljava/lang/String;

    return-void
.end method
