.class public Lcn/codemao/android/account/bean/UsernameVO;
.super Ljava/lang/Object;
.source "UsernameVO.java"


# instance fields
.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcn/codemao/android/account/bean/UsernameVO;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcn/codemao/android/account/bean/UsernameVO;->username:Ljava/lang/String;

    return-void
.end method
