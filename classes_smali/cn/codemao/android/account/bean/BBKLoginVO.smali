.class public Lcn/codemao/android/account/bean/BBKLoginVO;
.super Ljava/lang/Object;
.source "BBKLoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcn/codemao/android/account/bean/BBKLoginVO;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/codemao/android/account/bean/BBKLoginVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/bean/BBKLoginVO;->code:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/account/bean/BBKLoginVO;->pid:Ljava/lang/String;

    return-void
.end method
