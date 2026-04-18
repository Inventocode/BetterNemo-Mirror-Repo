.class public Lcn/codemao/android/account/bean/CaptchaVerifyVO;
.super Ljava/lang/Object;
.source "CaptchaVerifyVO.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->appid:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->ticket:Ljava/lang/String;

    return-void
.end method
