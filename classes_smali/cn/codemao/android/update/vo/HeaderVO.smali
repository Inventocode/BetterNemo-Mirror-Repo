.class public Lcn/codemao/android/update/vo/HeaderVO;
.super Ljava/lang/Object;
.source "HeaderVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private density:I

.field private devid:Ljava/lang/String;

.field private la:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private net:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private swvc:I

.field private swvn:Ljava/lang/String;

.field private sysv:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->devid:Ljava/lang/String;

    const-string v1, "android"

    .line 7
    iput-object v1, p0, Lcn/codemao/android/update/vo/HeaderVO;->platform:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->uid:Ljava/lang/String;

    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lcn/codemao/android/update/vo/HeaderVO;->swvc:I

    .line 10
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->swvn:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->model:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcn/codemao/android/update/vo/HeaderVO;->density:I

    .line 13
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->resolution:Ljava/lang/String;

    const-string v1, "zh"

    .line 14
    iput-object v1, p0, Lcn/codemao/android/update/vo/HeaderVO;->la:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->net:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->sysv:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/codemao/android/update/vo/HeaderVO;->pid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setDensity(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->density:I

    return-void
.end method

.method public setDevid(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->devid:Ljava/lang/String;

    return-void
.end method

.method public setLa(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->la:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->model:Ljava/lang/String;

    return-void
.end method

.method public setNet(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->net:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->pid:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSwvc(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->swvc:I

    return-void
.end method

.method public setSwvn(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->swvn:Ljava/lang/String;

    return-void
.end method

.method public setSysv(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcn/codemao/android/update/vo/HeaderVO;->sysv:Ljava/lang/String;

    return-void
.end method
