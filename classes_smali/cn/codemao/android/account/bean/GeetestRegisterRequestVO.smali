.class public Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;
.super Ljava/lang/Object;
.source "GeetestRegisterRequestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;->appid:Ljava/lang/String;

    return-void
.end method
