.class public Lcom/codemao/nemo/bean/BBLStatusVO;
.super Ljava/lang/Object;
.source "BBLStatusVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private is_existed:Z

.field private oauth_ticket:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private user_info:Lcn/codemao/android/account/bean/UserInfoVO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOauth_ticket()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->oauth_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    return-object v0
.end method

.method public isIs_existed()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->is_existed:Z

    return v0
.end method

.method public setIs_existed(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->is_existed:Z

    return-void
.end method

.method public setOauth_ticket(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->oauth_ticket:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->token:Ljava/lang/String;

    return-void
.end method

.method public setUser_info(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/bean/BBLStatusVO;->user_info:Lcn/codemao/android/account/bean/UserInfoVO;

    return-void
.end method
