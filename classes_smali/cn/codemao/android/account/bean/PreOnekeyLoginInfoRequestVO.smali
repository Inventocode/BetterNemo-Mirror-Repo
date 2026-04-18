.class public Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;
.super Ljava/lang/Object;
.source "PreOnekeyLoginInfoRequestVO.java"


# instance fields
.field private pid:Ljava/lang/String;

.field private platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPid()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;->platform:Ljava/lang/String;

    return-void
.end method
