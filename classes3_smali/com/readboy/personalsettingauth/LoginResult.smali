.class Lcom/readboy/personalsettingauth/LoginResult;
.super Ljava/lang/Object;
.source "LoginResult.java"


# instance fields
.field private access_expire:I

.field private access_token:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginResultFromJsonStr(Ljava/lang/String;)Lcom/readboy/personalsettingauth/LoginResult;
    .registers 3

    .line 93
    new-instance v0, Lcom/readboy/personalsettingauth/LoginResult;

    invoke-direct {v0}, Lcom/readboy/personalsettingauth/LoginResult;-><init>()V

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 96
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "uid"

    .line 97
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setUid(Ljava/lang/String;)V

    const-string p0, "username"

    .line 98
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setUsername(Ljava/lang/String;)V

    const-string p0, "email"

    .line 99
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setEmail(Ljava/lang/String;)V

    const-string p0, "mobile"

    .line 100
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setMobile(Ljava/lang/String;)V

    const-string p0, "forbidden"

    .line 101
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setForbidden(Ljava/lang/String;)V

    const-string p0, "access_token"

    .line 102
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setAccess_token(Ljava/lang/String;)V

    const-string p0, "access_expire"

    .line 103
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setAccess_expire(I)V

    const-string p0, "avatar"

    .line 104
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/LoginResult;->setAvatar(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5d
    :goto_5d
    return-object v0
.end method


# virtual methods
.method public getAccess_expire()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/readboy/personalsettingauth/LoginResult;->access_expire:I

    return v0
.end method

.method public getAccess_token()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/readboy/personalsettingauth/LoginResult;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/readboy/personalsettingauth/LoginResult;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/readboy/personalsettingauth/LoginResult;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/readboy/personalsettingauth/LoginResult;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/readboy/personalsettingauth/LoginResult;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_expire(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/readboy/personalsettingauth/LoginResult;->access_expire:I

    return-void
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/readboy/personalsettingauth/LoginResult;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/readboy/personalsettingauth/LoginResult;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/readboy/personalsettingauth/LoginResult;->email:Ljava/lang/String;

    return-void
.end method

.method public setForbidden(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/readboy/personalsettingauth/LoginResult;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/readboy/personalsettingauth/LoginResult;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
