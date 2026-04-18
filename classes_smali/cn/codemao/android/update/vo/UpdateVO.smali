.class public Lcn/codemao/android/update/vo/UpdateVO;
.super Ljava/lang/Object;
.source "UpdateVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field channel:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field policy:Z

.field swvc:I

.field swvn:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setChannel(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcn/codemao/android/update/vo/UpdateVO;->channel:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/codemao/android/update/vo/UpdateVO;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setPolicy(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcn/codemao/android/update/vo/UpdateVO;->policy:Z

    return-void
.end method

.method public setSwvc(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcn/codemao/android/update/vo/UpdateVO;->swvc:I

    return-void
.end method

.method public setSwvn(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/codemao/android/update/vo/UpdateVO;->swvn:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/codemao/android/update/vo/UpdateVO;->uid:Ljava/lang/String;

    return-void
.end method
