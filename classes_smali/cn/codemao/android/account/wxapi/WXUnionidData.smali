.class public Lcn/codemao/android/account/wxapi/WXUnionidData;
.super Ljava/lang/Object;
.source "WXUnionidData.java"


# instance fields
.field private access_token:Ljava/lang/String;

.field private expires_in:I

.field private openid:Ljava/lang/String;

.field private refresh_token:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private unionid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()I
    .registers 2

    .line 25
    iget v0, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->expires_in:I

    return v0
.end method

.method public getOpenid()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionid()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->unionid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setExpires_in(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->expires_in:I

    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->openid:Ljava/lang/String;

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->scope:Ljava/lang/String;

    return-void
.end method

.method public setUnionid(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->unionid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WXUnionidData{access_token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expires_in=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->expires_in:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", refresh_token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", openid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->openid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scope=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->scope:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unionid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/wxapi/WXUnionidData;->unionid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
