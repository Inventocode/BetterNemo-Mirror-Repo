.class public Lcn/codemao/android/account/bean/HwBindVO;
.super Ljava/lang/Object;
.source "HwBindVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcn/codemao/android/account/bean/HwBindVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcn/codemao/android/account/bean/HwBindVO;->token:Ljava/lang/String;

    return-void
.end method
