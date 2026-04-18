.class public Lcn/codemao/android/account/bean/TencentCaptchaVO;
.super Ljava/lang/Object;
.source "TencentCaptchaVO.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private randomStr:Ljava/lang/String;

.field private tencentTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/codemao/android/account/bean/TencentCaptchaVO;->tencentTicket:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcn/codemao/android/account/bean/TencentCaptchaVO;->randomStr:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcn/codemao/android/account/bean/TencentCaptchaVO;->appid:Ljava/lang/String;

    return-void
.end method
