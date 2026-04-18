.class public Lcn/codemao/android/account/CodeMaoAccount;
.super Ljava/lang/Object;
.source "CodeMaoAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/CodeMaoAccount$Builder;,
        Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;,
        Lcn/codemao/android/account/CodeMaoAccount$AppType;
    }
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "appid"

.field public static APPID_RESULT:Ljava/lang/String; = ""

.field public static final GEETEST:Ljava/lang/String; = "GEETEST"

.field public static final LOGIN:I = 0x2

.field public static final LOGIN_PWD:I = 0x5

.field public static final NETEASE:Ljava/lang/String; = "NETEASE"

.field public static final NEXTDATA:Ljava/lang/String; = "NEXTDATA"

.field public static QqAppID_RESULT:Ljava/lang/String; = ""

.field public static final REGISTER:I = 0x1

.field public static final RESET_PASSWORD:I = 0x3

.field public static final RULE:Ljava/lang/String; = "rule"

.field public static final SILENT_LOGIN:I = 0x4

.field public static final TENCENT:Ljava/lang/String; = "TENCENT"

.field public static final TICKET:Ljava/lang/String; = "ticket"

.field public static WechatAppId_RESULT:Ljava/lang/String; = ""


# direct methods
.method public static synthetic $r8$lambda$0-L0YTppXUOyXiqzeITdtj94EnE(Lcn/codemao/android/account/bean/CaptchaCodeVO;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lokhttp3/ResponseBody;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$captchaRule$7(Lcn/codemao/android/account/bean/CaptchaCodeVO;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7JQVyEzal6BfylveqJ1t8Uva9SI(Lcn/codemao/android/account/listener/NetSuccessResultListener;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$logout$12(Lcn/codemao/android/account/listener/NetSuccessResultListener;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hl5rdcEpwR9bv9dsly9rPNL9-LI(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$switchCaptchaRule$8(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KTN88v1CzacKiSglBmvLlC2E2Zw(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$fetchTicket$4(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TKZlbdHwaNHjjGWVnNiHtc7Zb48(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaInfo;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$loginByAccount$6(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Usn9-UT2p-sXbKXY8iWHHtCwRs8(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/TicketResult;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$resetPassword$11(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/TicketResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i7cG6MgiGENy6obZFGMHN-oBct0(Landroid/content/Context;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lokhttp3/ResponseBody;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$fetchVoiceCaptcha$1(Landroid/content/Context;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iHoREymzzmtNm1bAPgnBy-FTus0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetFailResultListener;Lorg/json/JSONObject;Lio/reactivex/ObservableEmitter;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$fetchTicket$5(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetFailResultListener;Lorg/json/JSONObject;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kmTrTw5S0jB5x9lIgsuJNeatOrA(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$byGeetest$10(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rYZwXa9h0dITrcGCUolIubnWRdE(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$fetchTicket$2(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s9KlyT1biRvYRKEPQN0EyDzJiCE(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$bytWaterproofWall$9(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sRUtfCni_phJ6M1NjLXBBZih9y0(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$fetchTicket$3(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tBuzx7S9xk74C9h1O9bjZ2bDO20(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/codemao/android/account/CodeMaoAccount;->lambda$fetchVoiceCaptcha$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Builder()Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 1

    .line 73
    new-instance v0, Lcn/codemao/android/account/CodeMaoAccount$Builder;

    invoke-direct {v0}, Lcn/codemao/android/account/CodeMaoAccount$Builder;-><init>()V

    return-object v0
.end method

.method public static CheckoutCommonCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1378
    new-instance v0, Lcn/codemao/android/account/bean/CheckoutCaptcha;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/CheckoutCaptcha;-><init>()V

    .line 1379
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/CheckoutCaptcha;->setPhone_number(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/CheckoutCaptcha;->setCaptcha(Ljava/lang/String;)V

    .line 1381
    invoke-static {v0, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->CheckoutCommonCaptcha(Lcn/codemao/android/account/bean/CheckoutCaptcha;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static activateByOauth(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/LoginUserInfoVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1051
    new-instance v0, Lcn/codemao/android/account/bean/OauthActivateVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/OauthActivateVO;-><init>()V

    .line 1052
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1053
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/OauthActivateVO;->setCaptcha(Ljava/lang/String;)V

    .line 1055
    :cond_e
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/OauthActivateVO;->setOauth_ticket(Ljava/lang/String;)V

    .line 1056
    invoke-static {v0, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->activateByOauth(Lcn/codemao/android/account/bean/OauthActivateVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static activeEmail(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 911
    new-instance v0, Lcn/codemao/android/account/bean/ActiveEmailVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/ActiveEmailVO;-><init>()V

    .line 912
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/ActiveEmailVO;->setActive_code(Ljava/lang/String;)V

    .line 913
    invoke-static {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->activieEmail(Lcn/codemao/android/account/bean/ActiveEmailVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static bindBBK(Landroid/app/Activity;)V
    .registers 2

    .line 1493
    invoke-static {}, Lcn/codemao/android/account/util/BBKManager;->getInstance()Lcn/codemao/android/account/util/BBKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/util/BBKManager;->bindService(Landroid/app/Activity;)V

    return-void
.end method

.method public static bindByWechatCode(Lcn/codemao/android/account/listener/WechatCodeListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/WechatCodeListener;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1511
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/codemao/android/account/util/WechatManager;->bindByWechatCode(Lcn/codemao/android/account/listener/WechatCodeListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static bindPhone(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1180
    new-instance v0, Lcn/codemao/android/account/bean/BindPhoneVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/BindPhoneVO;-><init>()V

    .line 1181
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/BindPhoneVO;->setPhone_number(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/BindPhoneVO;->setCaptcha(Ljava/lang/String;)V

    .line 1183
    invoke-static {v0, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->bindPhone(Lcn/codemao/android/account/bean/BindPhoneVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static bindPhoneCaptchaByOauth(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1033
    new-instance v0, Lcn/codemao/android/account/bean/OauthCaptchaVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/OauthCaptchaVO;-><init>()V

    .line 1034
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/OauthCaptchaVO;->setOauth_ticket(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/OauthCaptchaVO;->setPhone_number(Ljava/lang/String;)V

    .line 1036
    invoke-static {v0, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->sendBindPhoneCodeByOauth(Lcn/codemao/android/account/bean/OauthCaptchaVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static bindQQ(Landroid/app/Activity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1133
    invoke-static {}, Lcn/codemao/android/account/util/QQManager;->getInstance()Lcn/codemao/android/account/util/QQManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x65

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcn/codemao/android/account/util/QQManager;->login(ZLcn/codemao/android/account/listener/AuthListener;Ljava/util/List;Landroid/app/Activity;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static bindWechat(Landroid/content/Context;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1114
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x6f

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcn/codemao/android/account/util/WechatManager;->wxRequest(ZLjava/util/List;Lcn/codemao/android/account/listener/AuthListener;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private static buildVoiceScene(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_54

    goto :goto_42

    :sswitch_c
    const-string v0, "COMMON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_42

    :cond_15
    const/4 v1, 0x4

    goto :goto_42

    :sswitch_17
    const-string v0, "LOGIN_WITH_REGISTER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x3

    goto :goto_42

    :sswitch_22
    const-string v0, "REGISTER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v0, "LOGIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_42

    :cond_36
    const/4 v1, 0x1

    goto :goto_42

    :sswitch_38
    const-string v0, "RESET_PASSWORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    packed-switch v1, :pswitch_data_6a

    const-string p0, ""

    goto :goto_53

    :pswitch_48  #0x4
    const-string p0, "common"

    goto :goto_53

    :pswitch_4b  #0x2
    const-string p0, "register"

    goto :goto_53

    :pswitch_4e  #0x1, 0x3
    const-string p0, "login"

    goto :goto_53

    :pswitch_51  #0x0
    const-string p0, "reset_password"

    :goto_53
    return-object p0

    :sswitch_data_54
    .sparse-switch
        -0x18b9e455 -> :sswitch_38
        0x453f749 -> :sswitch_2d
        0x5821ea3 -> :sswitch_22
        0x763ffb86 -> :sswitch_17
        0x76d21deb -> :sswitch_c
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51  #00000000
        :pswitch_4e  #00000001
        :pswitch_4b  #00000002
        :pswitch_4e  #00000003
        :pswitch_48  #00000004
    .end packed-switch
.end method

.method private static byGeetest(Landroid/content/Context;ILjava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaInfo;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 809
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->getInstance()Lcn/codemao/android/account/util/GeetestRequest;

    move-result-object v0

    new-instance v8, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    invoke-virtual {v0, p0, p2, v8}, Lcn/codemao/android/account/util/GeetestRequest;->getGeetest(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/GeetestListener;)V

    return-void
.end method

.method private static bytWaterproofWall(Landroid/content/Context;ILjava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaInfo;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 752
    new-instance v7, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda9;

    move-object v0, v7

    move-object v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    invoke-static {p0, p2, v7, p6}, Lcn/codemao/android/account/CodeMaoAccount;->bytWaterproofWall(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private static bytWaterproofWall(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 766
    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/CodeMaoAccount$1;

    invoke-direct {v1, p2, p3}, Lcn/codemao/android/account/CodeMaoAccount$1;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    new-instance p2, Lcn/codemao/android/account/CodeMaoAccount$2;

    invoke-direct {p2, p3}, Lcn/codemao/android/account/CodeMaoAccount$2;-><init>(Lcn/codemao/android/account/listener/NetFailResultListener;)V

    invoke-virtual {v0, p0, p1, v1, p2}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->validate(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private static captchaRule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaInfo;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            "I)V"
        }
    .end annotation

    .line 672
    new-instance v1, Lcn/codemao/android/account/bean/CaptchaCodeVO;

    invoke-direct {v1}, Lcn/codemao/android/account/bean/CaptchaCodeVO;-><init>()V

    .line 673
    invoke-virtual {v1, p2}, Lcn/codemao/android/account/bean/CaptchaCodeVO;->setPhone_number(Ljava/lang/String;)V

    .line 674
    new-instance v7, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v2, p0

    move v3, p6

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda3;-><init>(Lcn/codemao/android/account/bean/CaptchaCodeVO;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    invoke-static {p1, p2, v7, p5}, Lcn/codemao/android/account/net/AccountRequest;->captchaRule(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static changeAccountInfo(Lcn/codemao/android/account/bean/UpdateInformationVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UpdateInformationVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/UserInfoVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1020
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->updateInformation(Lcn/codemao/android/account/bean/UpdateInformationVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static changeBindPhoneNumber(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1229
    new-instance v0, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;-><init>()V

    .line 1230
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;->setNew_phone_number(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/UpdateBindPhoneVO;->setCaptcha(Ljava/lang/String;)V

    .line 1232
    invoke-static {v0, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->updateBindPhone(Lcn/codemao/android/account/bean/UpdateBindPhoneVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static changePasswordByAccounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1002
    new-instance v0, Lcn/codemao/android/account/bean/PasswordByAccountsVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/PasswordByAccountsVO;-><init>()V

    .line 1003
    invoke-virtual {v0, p2}, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->setConfirm_password(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->setOld_password(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/PasswordByAccountsVO;->setPassword(Ljava/lang/String;)V

    .line 1006
    invoke-static {v0, p3, p4}, Lcn/codemao/android/account/net/AccountRequest;->updatePassword(Lcn/codemao/android/account/bean/PasswordByAccountsVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static changePasswordByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 980
    new-instance v0, Lcn/codemao/android/account/bean/PasswordByPhoneVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/PasswordByPhoneVO;-><init>()V

    .line 981
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/PasswordByPhoneVO;->setPhone_number(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/PasswordByPhoneVO;->setPassword(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, p2}, Lcn/codemao/android/account/bean/PasswordByPhoneVO;->setCaptcha(Ljava/lang/String;)V

    .line 984
    invoke-static {v0, p3, p4}, Lcn/codemao/android/account/net/AccountRequest;->updatePassword(Lcn/codemao/android/account/bean/PasswordByPhoneVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static changeStudentPassword(Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1335
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->teacherUpdatePassword(Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static changeUserName(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 946
    new-instance v0, Lcn/codemao/android/account/bean/UsernameVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/UsernameVO;-><init>()V

    .line 947
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/UsernameVO;->setUsername(Ljava/lang/String;)V

    .line 948
    invoke-static {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->updateUsername(Lcn/codemao/android/account/bean/UsernameVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static checkBindStatusByOauths(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/BindStatusVO;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1150
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->checkBindStatusByOauths(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static checkPhoneExisting(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1196
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->checkPhoneExisting(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static checkoutResetTicket(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/TicketCheckoutVO;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/TicketResult;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            "Lcn/codemao/android/account/bean/TicketCheckoutVO;",
            ")V"
        }
    .end annotation

    .line 1285
    invoke-static {p2, p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->checkoutResetTicket(Lcn/codemao/android/account/bean/TicketCheckoutVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static clearAccountCache()V
    .registers 0

    .line 1348
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clear()V

    return-void
.end method

.method public static closeAuthPage()V
    .registers 1

    .line 1467
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->closeAuthPage()V

    return-void
.end method

.method public static emailRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 899
    new-instance v0, Lcn/codemao/android/account/bean/EmailRegisterVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/EmailRegisterVO;-><init>()V

    .line 900
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/EmailRegisterVO;->setEmail(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/EmailRegisterVO;->setPassword(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, p2}, Lcn/codemao/android/account/bean/EmailRegisterVO;->setLanguage(Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/EmailRegisterVO;->setPid(Ljava/lang/String;)V

    .line 904
    invoke-static {v0, p3, p4}, Lcn/codemao/android/account/net/AccountRequest;->emailRegister(Lcn/codemao/android/account/bean/EmailRegisterVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static fetchTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/Observable;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v6, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetFailResultListener;Lorg/json/JSONObject;)V

    invoke-static {v6}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static fetchVoiceCaptcha(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 377
    invoke-static {p3}, Lcn/codemao/android/account/CodeMaoAccount;->buildVoiceScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v8, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;)V

    invoke-static {v0, p2, v8, p5}, Lcn/codemao/android/account/net/AccountRequest;->captchaRule(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static findAccountAppLoginDeviceList(ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/BindDeviceListVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1572
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->findAccountAppLoginDeviceList(ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static findUserBindDeviceStatus(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/BindDeviceStatusVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1563
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->findUserBindDeviceStatus(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getAccountToken()Ljava/lang/String;
    .registers 3

    .line 1409
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->isTokenPassed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 1412
    :cond_d
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    return-object v0

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBindPhoneCaptcha(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1163
    new-instance v0, Lcn/codemao/android/account/bean/CaptchaCodeVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/CaptchaCodeVO;-><init>()V

    .line 1164
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/CaptchaCodeVO;->setPhone_number(Ljava/lang/String;)V

    .line 1165
    invoke-static {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->sendBindPhoneCode(Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;
    .registers 1

    .line 1312
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->isTokenPassed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 1315
    :cond_d
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCachedUserInfo(Lcn/codemao/android/account/listener/UserInfoListener;)V
    .registers 7

    .line 1320
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    .line 1321
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->isTokenPassed()Z

    move-result v1

    .line 1322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    if-nez v0, :cond_17

    const-string v0, "800001"

    .line 1324
    invoke-interface {p0, v0}, Lcn/codemao/android/account/listener/UserInfoListener;->onError(Ljava/lang/String;)V

    goto :goto_22

    :cond_17
    if-eqz v1, :cond_1f

    const-string v0, "800002"

    .line 1326
    invoke-interface {p0, v0}, Lcn/codemao/android/account/listener/UserInfoListener;->onError(Ljava/lang/String;)V

    goto :goto_22

    .line 1328
    :cond_1f
    invoke-interface {p0, v0}, Lcn/codemao/android/account/listener/UserInfoListener;->onSuccess(Lcn/codemao/android/account/bean/UserInfoVO;)V

    :goto_22
    return-void
.end method

.method public static getChangePasswordCaptcha(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 961
    new-instance v0, Lcn/codemao/android/account/bean/CaptchaCodeVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/CaptchaCodeVO;-><init>()V

    .line 962
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/CaptchaCodeVO;->setPhone_number(Ljava/lang/String;)V

    .line 963
    invoke-static {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->sendUpdatePasswordCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getChangePhoneNumberCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1211
    new-instance v0, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;-><init>()V

    .line 1212
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;->setPhone_number(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;->setOld_phone_number(Ljava/lang/String;)V

    .line 1214
    invoke-static {v0, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->sendUpdateBindPhoneCode(Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getCookies()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1385
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 1386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Cookie;

    .line 1388
    invoke-virtual {v2}, Lokhttp3/Cookie;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v1
.end method

.method public static getEmail()Ljava/lang/String;
    .registers 1

    .line 1401
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->isTokenPassed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 1404
    :cond_d
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLoginCaptcha(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const-string v1, "login"

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 642
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->captchaRule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;I)V

    return-void
.end method

.method public static getOnekeyInitStatus()Z
    .registers 1

    .line 1460
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->isInitSuccess()Z

    move-result v0

    return v0
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .registers 1

    .line 1394
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->isTokenPassed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 1397
    :cond_d
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1296
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getProtocolList(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/ProtocolsListResult;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 523
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/ProtocolRequest;->requestProtocolList(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getProtocols(Lcn/codemao/android/account/listener/NetSuccessResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 516
    invoke-static {v0, p0, v1}, Lcn/codemao/android/account/net/ProtocolRequest;->requestProtocols(ZLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getProtocols(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 509
    invoke-static {v0, p0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->getProtocols(ZLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static getProtocols(ZLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 502
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/ProtocolRequest;->requestProtocols(ZLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getRegisterCaptcha(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const-string v1, "register"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 628
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->captchaRule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;I)V

    return-void
.end method

.method public static getResetPasswordCaptcha(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const-string v1, "reset_password"

    const/4 v4, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 1247
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->captchaRule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;I)V

    return-void
.end method

.method public static getSilentLoginCapcha(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const-string v1, "login"

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 1497
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->captchaRule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;I)V

    return-void
.end method

.method public static getUserInfoProfile(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/UserInfoVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1307
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->getUserInfoProfile(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static initOneKeyLoginSdk(ZLandroid/content/Context;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 364
    :cond_3
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->setDebug(Z)Lcn/codemao/android/onekeylogin/QuickLoginManager;

    .line 365
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static isLogin()Z
    .registers 1

    .line 1422
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static synthetic lambda$byGeetest$10(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 14

    .line 810
    new-instance v0, Lcn/codemao/android/account/bean/TicketVo;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/TicketVo;-><init>()V

    .line 811
    invoke-virtual {p6}, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->getTicket()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcn/codemao/android/account/bean/TicketVo;->setTicket(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 812
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->switchCaptchaType(Lcn/codemao/android/account/bean/TicketVo;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private static synthetic lambda$bytWaterproofWall$9(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 14

    .line 753
    new-instance v0, Lcn/codemao/android/account/bean/TicketVo;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/TicketVo;-><init>()V

    .line 754
    invoke-virtual {p6}, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->getTicket()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcn/codemao/android/account/bean/TicketVo;->setTicket(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 755
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->switchCaptchaType(Lcn/codemao/android/account/bean/TicketVo;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private static synthetic lambda$captchaRule$7(Lcn/codemao/android/account/bean/CaptchaCodeVO;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lokhttp3/ResponseBody;)V
    .registers 14

    .line 676
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p6}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p6

    invoke-direct {v1, p6}, Ljava/lang/String;-><init>([B)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 677
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->switchCaptchaRule(Lcn/codemao/android/account/bean/CaptchaCodeVO;Ljava/lang/String;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p0

    .line 679
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method private static synthetic lambda$fetchTicket$2(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 2

    .line 441
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 442
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$fetchTicket$3(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 2

    .line 448
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 449
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$fetchTicket$4(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 2

    .line 459
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 460
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$fetchTicket$5(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetFailResultListener;Lorg/json/JSONObject;Lio/reactivex/ObservableEmitter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_86

    goto :goto_2c

    :sswitch_c
    const-string v0, "GEETEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "TENCENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "NEXTDATA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_94

    const-string p0, "ticket"

    .line 464
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 465
    invoke-interface {p5, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 466
    invoke-interface {p5}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_84

    .line 438
    :pswitch_3c  #0x2
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->getInstance()Lcn/codemao/android/account/util/GeetestRequest;

    move-result-object p0

    new-instance p3, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda0;

    invoke-direct {p3, p5}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, p2, p3}, Lcn/codemao/android/account/util/GeetestRequest;->getGeetest(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/GeetestListener;)V

    goto :goto_84

    .line 447
    :pswitch_49  #0x1
    new-instance p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda7;

    invoke-direct {p0, p5}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda7;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-static {p1, p2, p0, p3}, Lcn/codemao/android/account/CodeMaoAccount;->bytWaterproofWall(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    goto :goto_84

    .line 453
    :pswitch_52  #0x0
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getConfig()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    move-result-object p0

    if-nez p0, :cond_6d

    .line 454
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p0

    new-instance p4, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;

    invoke-direct {p4, p2}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->build()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->setConfig(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;)V

    goto :goto_78

    .line 456
    :cond_6d
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getConfig()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->setAppId(Ljava/lang/String;)V

    .line 458
    :goto_78
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p0

    new-instance p2, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda6;

    invoke-direct {p2, p5}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda6;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, p2, p3}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->validate(Landroid/content/Context;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    :goto_84
    return-void

    nop

    :sswitch_data_86
    .sparse-switch
        -0x7c6c46e3 -> :sswitch_22
        -0x2a4b80db -> :sswitch_17
        0x258c6439 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_52  #00000000
        :pswitch_49  #00000001
        :pswitch_3c  #00000002
    .end packed-switch
.end method

.method private static synthetic lambda$fetchVoiceCaptcha$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 392
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/net/AccountRequest;->fetchVoiceCaptcha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static synthetic lambda$fetchVoiceCaptcha$1(Landroid/content/Context;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lokhttp3/ResponseBody;)V
    .registers 16

    .line 380
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p6}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p6

    invoke-direct {v0, p6}, Ljava/lang/String;-><init>([B)V

    .line 381
    new-instance p6, Lorg/json/JSONObject;

    invoke-direct {p6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rule"

    .line 383
    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appid"

    .line 384
    invoke-virtual {p6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 387
    invoke-static {p0, v0, v3, p6, p1}, Lcn/codemao/android/account/CodeMaoAccount;->fetchTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/Observable;

    move-result-object p0

    .line 390
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p6

    invoke-virtual {p0, p6}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 391
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p6

    invoke-virtual {p0, p6}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p6, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda12;

    move-object v2, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 392
    invoke-virtual {p0, p6}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    .line 395
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method private static synthetic lambda$loginByAccount$6(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaInfo;)V
    .registers 12

    .line 660
    invoke-virtual {p4}, Lcn/codemao/android/account/bean/CaptchaInfo;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcn/codemao/android/account/bean/CaptchaInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/net/AccountRequest;->loginByPassword(Lcn/codemao/android/account/listener/AuthListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static synthetic lambda$logout$12(Lcn/codemao/android/account/listener/NetSuccessResultListener;Ljava/lang/Object;)V
    .registers 2

    .line 1342
    invoke-interface {p0, p1}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    .line 1343
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clear()V

    return-void
.end method

.method private static synthetic lambda$resetPassword$11(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/TicketResult;)V
    .registers 4

    .line 1275
    invoke-virtual {p3}, Lcn/codemao/android/account/bean/TicketResult;->getTicket()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcn/codemao/android/account/bean/ResetPasswordVO;->setTicket(Ljava/lang/String;)V

    .line 1276
    invoke-static {p1, p2, p0}, Lcn/codemao/android/account/CodeMaoAccount;->resetPassword(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/ResetPasswordVO;)V

    return-void
.end method

.method private static synthetic lambda$switchCaptchaRule$8(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 14

    .line 722
    invoke-virtual {p6}, Lcn/codemao/android/account/bean/CaptchaVerifyVO;->getTicket()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->switchCaptchaType(Ljava/lang/String;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static loginByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AccountLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 659
    new-instance v4, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;

    invoke-direct {v4, p1, p2, p3, p4}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    const-string v1, "login"

    const/4 v3, 0x0

    const/4 v6, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->captchaRule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;I)V

    return-void
.end method

.method public static loginByBBK(Landroid/app/Activity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/BBKLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1518
    invoke-static {}, Lcn/codemao/android/account/util/BBKManager;->getInstance()Lcn/codemao/android/account/util/BBKManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/codemao/android/account/util/BBKManager;->login(Landroid/app/Activity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static loginByDuerOS(Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/DuerOSLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1532
    invoke-static {p0, v0, p1, p2}, Lcn/codemao/android/account/CodeMaoAccount;->loginByDuerOS(Ljava/util/List;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static loginByDuerOS(Ljava/util/List;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/DuerOSLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1539
    invoke-static {p0, p1, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->loginByDuerOS(Ljava/util/List;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static loginByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 889
    invoke-static {p0, p1, p2, p3, p4}, Lcn/codemao/android/account/net/AccountRequest;->loginByCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static loginByQQ(Landroid/app/Activity;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/QQLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1081
    invoke-static {}, Lcn/codemao/android/account/util/QQManager;->getInstance()Lcn/codemao/android/account/util/QQManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x64

    move-object v3, p1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/codemao/android/account/util/QQManager;->login(ZLcn/codemao/android/account/listener/AuthListener;Ljava/util/List;Landroid/app/Activity;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static loginByReadboy(Landroid/app/Activity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/ReadboyLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1525
    invoke-static {}, Lcn/codemao/android/account/util/BBKManager;->getInstance()Lcn/codemao/android/account/util/BBKManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/codemao/android/account/util/BBKManager;->login(Landroid/app/Activity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static loginByWeChat(Landroid/content/Context;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/WechatLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1063
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x6e

    move-object v2, p1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/codemao/android/account/util/WechatManager;->wxRequest(ZLjava/util/List;Lcn/codemao/android/account/listener/AuthListener;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static loginByWechatCode(Lcn/codemao/android/account/listener/WechatCodeListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/WechatCodeListener;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/WechatLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1506
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/codemao/android/account/util/WechatManager;->loginByWechatCode(Lcn/codemao/android/account/listener/WechatCodeListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static logout(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1341
    new-instance v0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda5;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;)V

    invoke-static {v0, p1}, Lcn/codemao/android/account/net/AccountRequest;->logout(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static noaheduLogin(Lcn/codemao/android/account/bean/NoaheduLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/NoaheduLoginVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/NoaheduLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 536
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/account/bean/NoaheduLoginVO;->setPid(Ljava/lang/String;)V

    .line 537
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->noaheduLogin(Lcn/codemao/android/account/bean/NoaheduLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1418
    invoke-static {}, Lcn/codemao/android/account/util/QQManager;->getInstance()Lcn/codemao/android/account/util/QQManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/codemao/android/account/util/QQManager;->setIUiListener(IILandroid/content/Intent;)V

    return-void
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1430
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->getInstance()Lcn/codemao/android/account/util/GeetestRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/util/GeetestRequest;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .registers 2

    .line 1426
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->getInstance()Lcn/codemao/android/account/util/GeetestRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/util/GeetestRequest;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method public static onDestroy()V
    .registers 1

    .line 1478
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->destroy()V

    .line 1480
    invoke-static {}, Lcn/codemao/android/account/util/QQManager;->getInstance()Lcn/codemao/android/account/util/QQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/QQManager;->clear()V

    .line 1481
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/WechatManager;->clear()V

    .line 1483
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->getInstance()Lcn/codemao/android/account/util/GeetestRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/GeetestRequest;->onDestroy()V

    .line 1484
    invoke-static {}, Lcn/codemao/android/account/util/WaterproofWallRequest;->getInstance()Lcn/codemao/android/account/util/WaterproofWallRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/WaterproofWallRequest;->onDestroy()V

    .line 1485
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->destroy()V

    return-void
.end method

.method public static onDestroyOneKeyLogin()V
    .registers 1

    .line 1474
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->destroy()V

    return-void
.end method

.method public static openOnekeyLoginPage(Landroid/content/Context;Ljava/util/List;Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;",
            ")V"
        }
    .end annotation

    .line 1441
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->openLoginAuth(Landroid/content/Context;Ljava/util/List;Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;)V

    return-void
.end method

.method public static phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 570
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 607
    new-instance v0, Lcn/codemao/android/account/bean/CodeRegisterVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/CodeRegisterVO;-><init>()V

    .line 608
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/CodeRegisterVO;->setCaptcha(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/CodeRegisterVO;->setPhone_number(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/CodeRegisterVO;->setPid(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0, p2}, Lcn/codemao/android/account/bean/CodeRegisterVO;->setPassword(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0, p4}, Lcn/codemao/android/account/bean/CodeRegisterVO;->setAgreementIds(Ljava/util/List;)V

    .line 613
    invoke-static {v0, p3, p5, p6}, Lcn/codemao/android/account/net/AccountRequest;->registerByPhone(Lcn/codemao/android/account/bean/CodeRegisterVO;Ljava/lang/Boolean;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 586
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 552
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method public static queryGradesList(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/GradeInfoVO;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1589
    invoke-static {v0, v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->queryGradeList(JLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static queryGradesListWithTimestamp(JLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/GradeInfoVO;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1597
    invoke-static {p0, p1, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->queryGradeList(JLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static reInitOnekeyLogin(Landroid/content/Context;)V
    .registers 2

    .line 1451
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static removeBindDevice(JLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1581
    invoke-static {p0, p1, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->removeBindDevice(JLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static requestNoSignProtocols(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 480
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/ProtocolRequest;->requestProtocolsStatus(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static resetPassword(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/ResetPasswordVO;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            "Lcn/codemao/android/account/bean/ResetPasswordVO;",
            ")V"
        }
    .end annotation

    .line 1281
    invoke-static {p2, p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->resetPassword(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1266
    new-instance v0, Lcn/codemao/android/account/bean/TicketCheckoutVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/TicketCheckoutVO;-><init>()V

    .line 1267
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/TicketCheckoutVO;->setCaptcha(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/TicketCheckoutVO;->setPhone_number(Ljava/lang/String;)V

    .line 1270
    new-instance p0, Lcn/codemao/android/account/bean/ResetPasswordVO;

    invoke-direct {p0}, Lcn/codemao/android/account/bean/ResetPasswordVO;-><init>()V

    .line 1271
    invoke-virtual {p0, p2}, Lcn/codemao/android/account/bean/ResetPasswordVO;->setPassword(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0, p3}, Lcn/codemao/android/account/bean/ResetPasswordVO;->setConfirm_password(Ljava/lang/String;)V

    .line 1274
    new-instance p1, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p4, p5}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda4;-><init>(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    invoke-static {v0, p1, p5}, Lcn/codemao/android/account/net/AccountRequest;->checkoutResetTicket(Lcn/codemao/android/account/bean/TicketCheckoutVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static sendCommonCaptcha(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1361
    new-instance v0, Lcn/codemao/android/account/bean/CaptchaCodeVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/CaptchaCodeVO;-><init>()V

    .line 1362
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/CaptchaCodeVO;->setPhone_number(Ljava/lang/String;)V

    .line 1363
    invoke-static {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->sendCommonCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static setDefaultPassword(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 929
    new-instance v0, Lcn/codemao/android/account/bean/PasswordFirstVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/PasswordFirstVO;-><init>()V

    .line 930
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/PasswordFirstVO;->setPassword(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/PasswordFirstVO;->setConfirm_password(Ljava/lang/String;)V

    .line 932
    invoke-static {v0, p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->setDefaultPassword(Lcn/codemao/android/account/bean/PasswordFirstVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static signProtocols(Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 491
    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/net/ProtocolRequest;->signProtocols(Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static silentLogin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/SilentLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1501
    invoke-static {p0, p1, p2, p3, p4}, Lcn/codemao/android/account/net/AccountRequest;->silentLogin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static switchCaptchaRule(Lcn/codemao/android/account/bean/CaptchaCodeVO;Ljava/lang/String;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaInfo;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 703
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rule"

    .line 704
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "appid"

    .line 705
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 708
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7c6c46e3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_53

    const v3, -0x2a4b80db

    if-eq v2, v3, :cond_49

    const v3, 0x258c6439

    if-eq v2, v3, :cond_3f

    goto :goto_5c

    :cond_3f
    const-string v2, "GEETEST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 v1, 0x0

    goto :goto_5c

    :cond_49
    const-string v2, "TENCENT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 v1, 0x1

    goto :goto_5c

    :cond_53
    const-string v2, "NEXTDATA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 v1, 0x2

    :cond_5c
    :goto_5c
    if-eqz v1, :cond_b7

    if-eq v1, v6, :cond_ad

    if-eq v1, v5, :cond_73

    const-string p1, "ticket"

    .line 726
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    move v4, p3

    move-object v5, p0

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 727
    invoke-static/range {v2 .. v8}, Lcn/codemao/android/account/CodeMaoAccount;->switchCaptchaType(Ljava/lang/String;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    goto/16 :goto_d1

    .line 716
    :cond_73
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getConfig()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    move-result-object p1

    if-nez p1, :cond_8e

    .line 717
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;

    invoke-direct {v0, v4}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig$Builder;->build()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->setConfig(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;)V

    goto :goto_99

    .line 719
    :cond_8e
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getConfig()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->setAppId(Ljava/lang/String;)V

    .line 721
    :goto_99
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda8;

    move-object v2, v0

    move-object v3, v4

    move v4, p3

    move-object v5, p0

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    invoke-virtual {p1, p2, v0, p6}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->validate(Landroid/content/Context;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    goto :goto_d1

    :cond_ad
    move-object v2, p2

    move v3, p3

    move-object v5, p0

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 713
    invoke-static/range {v2 .. v8}, Lcn/codemao/android/account/CodeMaoAccount;->bytWaterproofWall(Landroid/content/Context;ILjava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    goto :goto_d1

    :cond_b7
    move-object v2, p2

    move v3, p3

    move-object v5, p0

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 710
    invoke-static/range {v2 .. v8}, Lcn/codemao/android/account/CodeMaoAccount;->byGeetest(Landroid/content/Context;ILjava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c0} :catch_c1

    goto :goto_d1

    :catch_c1
    move-exception p1

    .line 731
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    const-string v1, ""

    move v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 732
    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->switchCaptchaType(Ljava/lang/String;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    :goto_d1
    return-void
.end method

.method private static switchCaptchaType(Lcn/codemao/android/account/bean/TicketVo;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TicketVo;",
            "Ljava/lang/String;",
            "I",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaInfo;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/TicketVo;->getTicket()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->switchCaptchaType(Ljava/lang/String;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private static switchCaptchaType(Ljava/lang/String;Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaInfo;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCaptchaType: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ticket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_43

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3f

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_37

    const/4 p3, 0x5

    if-eq p2, p3, :cond_2c

    goto :goto_46

    :cond_2c
    if-eqz p5, :cond_46

    .line 867
    new-instance p2, Lcn/codemao/android/account/bean/CaptchaInfo;

    invoke-direct {p2, p0, p1}, Lcn/codemao/android/account/bean/CaptchaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p2}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_46

    .line 862
    :cond_37
    invoke-static {p0, p1, p3, p4, p6}, Lcn/codemao/android/account/net/AccountRequest;->silentLoginCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_46

    .line 859
    :cond_3b
    invoke-static {p0, p1, p3, p4, p6}, Lcn/codemao/android/account/net/AccountRequest;->sendResetPasswordCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_46

    .line 856
    :cond_3f
    invoke-static {p0, p1, p3, p4, p6}, Lcn/codemao/android/account/net/AccountRequest;->sendLoginCode(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_46

    .line 853
    :cond_43
    invoke-static {p0, p1, p3, p4, p6}, Lcn/codemao/android/account/net/AccountRequest;->sendRegisterCode(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    :cond_46
    :goto_46
    return-void
.end method

.method public static unBindQQ(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1139
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->unbindQQ(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static unBindWeChat(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 1120
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->unbindWechat(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static unbindBBK(Landroid/app/Activity;)V
    .registers 2

    .line 1489
    invoke-static {}, Lcn/codemao/android/account/util/BBKManager;->getInstance()Lcn/codemao/android/account/util/BBKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/util/BBKManager;->clear(Landroid/app/Activity;)V

    return-void
.end method
