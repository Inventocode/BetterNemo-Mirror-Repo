.class public Lcom/readboy/personalsettingauth/data/UserInfoResult;
.super Ljava/lang/Object;
.source "UserInfoResult.java"


# instance fields
.field private age:I

.field private avatar:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->age:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->age:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->gender:Ljava/lang/String;

    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->realname:Ljava/lang/String;

    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->serial:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/readboy/personalsettingauth/data/UserInfoResult;->uid:Ljava/lang/String;

    return-void
.end method
