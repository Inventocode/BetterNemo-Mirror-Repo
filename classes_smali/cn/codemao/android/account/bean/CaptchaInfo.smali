.class public Lcn/codemao/android/account/bean/CaptchaInfo;
.super Ljava/lang/Object;
.source "CaptchaInfo.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/codemao/android/account/bean/CaptchaInfo;->ticket:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcn/codemao/android/account/bean/CaptchaInfo;->appId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcn/codemao/android/account/bean/CaptchaInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/codemao/android/account/bean/CaptchaInfo;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcn/codemao/android/account/bean/CaptchaInfo;->appId:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcn/codemao/android/account/bean/CaptchaInfo;->ticket:Ljava/lang/String;

    return-void
.end method
