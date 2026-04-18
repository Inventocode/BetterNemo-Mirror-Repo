.class public Lcn/codemao/android/account/bean/NoaheduLoginVO;
.super Ljava/lang/Object;
.source "NoaheduLoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private access_token:Ljava/lang/String;

.field private client_key:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private rand:Ljava/lang/String;

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_key()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->client_key:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getRand()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->rand:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setClient_key(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->client_key:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->pid:Ljava/lang/String;

    return-void
.end method

.method public setRand(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->rand:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcn/codemao/android/account/bean/NoaheduLoginVO;->sign:Ljava/lang/String;

    return-void
.end method
