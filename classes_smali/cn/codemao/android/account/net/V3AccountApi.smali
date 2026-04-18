.class public interface abstract Lcn/codemao/android/account/net/V3AccountApi;
.super Ljava/lang/Object;
.source "V3AccountApi.java"


# virtual methods
.method public abstract CheckoutCommonCaptcha(Lcn/codemao/android/account/bean/CheckoutCaptcha;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CheckoutCaptcha;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CheckoutCaptcha;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/common/check"
    .end annotation
.end method

.method public abstract activateByOauth(Lcn/codemao/android/account/bean/OauthActivateVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/OauthActivateVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/OauthActivateVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/LoginUserInfoVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/third-party"
    .end annotation
.end method

.method public abstract activieEmail(Lcn/codemao/android/account/bean/ActiveEmailVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/ActiveEmailVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/ActiveEmailVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/email/active"
    .end annotation
.end method

.method public abstract bindPhone(Lcn/codemao/android/account/bean/BindPhoneVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/BindPhoneVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/BindPhoneVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/phone/bind"
    .end annotation
.end method

.method public abstract bindQQ(Lcn/codemao/android/account/bean/QQBindVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/QQBindVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/QQBindVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/qq/bind"
    .end annotation
.end method

.method public abstract bindWechat(Lcn/codemao/android/account/bean/WechatBindVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/WechatBindVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/WechatBindVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/wechat/bind"
    .end annotation
.end method

.method public abstract captchaRule(Lcn/codemao/android/account/bean/RuleBean;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/RuleBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/RuleBean;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "set_url:captcha_url"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "captcha/rule/v3"
    .end annotation
.end method

.method public abstract checkBindStatusByOauths()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/BindStatusVO;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/oauths"
    .end annotation
.end method

.method public abstract checkCatcha(Lcn/codemao/android/account/bean/CheckCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CheckCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CheckCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/v2/captcha/check"
    .end annotation
.end method

.method public abstract checkOnekeyLoginToken(Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/SilentLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/one-click/token/check"
    .end annotation
.end method

.method public abstract checkPhoneExisting(Ljava/lang/String;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "phone_number"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/phone/check"
    .end annotation
.end method

.method public abstract checkoutResetTicket(Lcn/codemao/android/account/bean/TicketCheckoutVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/TicketCheckoutVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TicketCheckoutVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/TicketResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/password/check"
    .end annotation
.end method

.method public abstract checkoutResetTicketWith(Lcn/codemao/android/account/bean/TicketCheckoutVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/TicketCheckoutVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TicketCheckoutVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/TicketResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/password/check/post-process"
    .end annotation
.end method

.method public abstract emailRegister(Lcn/codemao/android/account/bean/EmailRegisterVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/EmailRegisterVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/EmailRegisterVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/email/register"
    .end annotation
.end method

.method public abstract fetchVoiceCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/VoiceCaptchaRequest;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/VoiceCaptchaRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/VoiceCaptchaRequest;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/voice/captcha/send"
    .end annotation
.end method

.method public abstract findAccountAppLoginDeviceList(Ljava/lang/String;Lcn/codemao/android/account/bean/BindDevicePageDTO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2  # Lcn/codemao/android/account/bean/BindDevicePageDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/BindDevicePageDTO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/BindDeviceListVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/device/list"
    .end annotation
.end method

.method public abstract findUserBindDeviceStatus(Ljava/lang/String;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/BindDeviceStatusVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/device"
    .end annotation
.end method

.method public abstract geetestRegister(Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "set_url:captcha_url"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "captcha/geetest/register"
    .end annotation
.end method

.method public abstract geetestVerify(Lokhttp3/RequestBody;)Lio/reactivex/Flowable;
    .param p1  # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "set_url:captcha_url"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "captcha/geetest/verify"
    .end annotation
.end method

.method public abstract getOnekeyLoginInfo(Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/one-click/provider"
    .end annotation
.end method

.method public abstract getPrivacyInfo()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/privacy"
    .end annotation
.end method

.method public abstract getUserInfoProfile()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/UserInfoVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/profile"
    .end annotation
.end method

.method public abstract loginBBK(Lcn/codemao/android/account/bean/BBKLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/BBKLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/BBKLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/BBKLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/bbk"
    .end annotation
.end method

.method public abstract loginByCode(Lcn/codemao/android/account/bean/CodeLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CodeLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CodeLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/phone/login"
    .end annotation
.end method

.method public abstract loginByCodeWith(Lcn/codemao/android/account/bean/CodeLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CodeLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CodeLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/phone/login/post-process"
    .end annotation
.end method

.method public abstract loginByDuerOS(Lcn/codemao/android/account/bean/DuerOSLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/DuerOSLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/DuerOSLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/DuerOSLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/xiaodu"
    .end annotation
.end method

.method public abstract loginByPassword(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/LoginVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/LoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/LoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/AccountLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/login/security"
    .end annotation
.end method

.method public abstract loginByQQ(Lcn/codemao/android/account/bean/QQLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/QQLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/QQLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/QQLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/qq"
    .end annotation
.end method

.method public abstract loginByReadboy(Lcn/codemao/android/account/bean/ReadBoyLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/ReadBoyLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/ReadBoyLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/ReadboyLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/readboy"
    .end annotation
.end method

.method public abstract loginByWechat(Lcn/codemao/android/account/bean/WechatLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/WechatLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/WechatLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/WechatLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/oauth/wechat"
    .end annotation
.end method

.method public abstract loginByWechatCode(Ljava/lang/String;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "appid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/account/signature"
    .end annotation
.end method

.method public abstract logout()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/logout"
    .end annotation
.end method

.method public abstract neteaseVerify(Lcn/codemao/android/account/bean/NeteaseRequest;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/NeteaseRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/NeteaseRequest;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "set_url:captcha_url"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "captcha/netease"
    .end annotation
.end method

.method public abstract nextDataVerify(Lcn/codemao/android/account/bean/NextDataRequest;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/NextDataRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/NextDataRequest;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "set_url:captcha_url"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "captcha/nextdata"
    .end annotation
.end method

.method public abstract noaheduLogin(Lcn/codemao/android/account/bean/NoaheduLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/NoaheduLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/NoaheduLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/NoaheduLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/noahedu/login"
    .end annotation
.end method

.method public abstract onekeyLoginErrUpload(Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/one-click/exception"
    .end annotation
.end method

.method public abstract queryAllGradeList(J)Lio/reactivex/Flowable;
    .param p1  # J
        .annotation runtime Lretrofit2/http/Query;
            value = "timestamp"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/GradeInfoVO;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/v3/app/accounts/grade-list"
    .end annotation
.end method

.method public abstract registerByPhone(Lcn/codemao/android/account/bean/CodeRegisterVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CodeRegisterVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CodeRegisterVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/register/phone"
    .end annotation
.end method

.method public abstract registerByPhoneWith(Lcn/codemao/android/account/bean/CodeRegisterVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CodeRegisterVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CodeRegisterVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/register/phone/with-agreement"
    .end annotation
.end method

.method public abstract removeBindDevice(Ljava/lang/String;J)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2  # J
        .annotation runtime Lretrofit2/http/Path;
            value = "deviceId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "tiger/v3/app/accounts/device/remove/{deviceId}"
    .end annotation
.end method

.method public abstract requestTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "randstr"
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/TicketVo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/captcha/graph/tickets/waterproof-wall"
    .end annotation
.end method

.method public abstract requestTicket(Ljava/util/Map;)Lio/reactivex/Flowable;
    .param p1  # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/TicketVo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/captcha/graph/tickets/geetest"
    .end annotation
.end method

.method public abstract resetPassword(Lcn/codemao/android/account/bean/ResetPasswordVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/ResetPasswordVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/ResetPasswordVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/password/reset"
    .end annotation
.end method

.method public abstract sendBindPhoneCode(Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/phone/bind"
    .end annotation
.end method

.method public abstract sendBindPhoneCodeByOauth(Lcn/codemao/android/account/bean/OauthCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/OauthCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/OauthCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/oauth"
    .end annotation
.end method

.method public abstract sendCommonCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/common"
    .end annotation
.end method

.method public abstract sendLoginCode(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/login"
    .end annotation
.end method

.method public abstract sendLoginCodeWith(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/login/post-process"
    .end annotation
.end method

.method public abstract sendRegisterCode(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/register/phone"
    .end annotation
.end method

.method public abstract sendRegisterCodeWith(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/register/phone/with-agreement"
    .end annotation
.end method

.method public abstract sendResetPasswordCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/password/reset"
    .end annotation
.end method

.method public abstract sendResetPasswordCaptchaWith(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/password/reset/post-process"
    .end annotation
.end method

.method public abstract sendUpdateBindPhoneCode(Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/phone/change"
    .end annotation
.end method

.method public abstract sendUpdatePasswordCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/password/update"
    .end annotation
.end method

.method public abstract setDefaultPassword(Lcn/codemao/android/account/bean/PasswordFirstVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordFirstVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordFirstVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/password/setting"
    .end annotation
.end method

.method public abstract silentLogin(Lcn/codemao/android/account/bean/SilentLoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/SilentLoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/SilentLoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/SilentLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/phone/login/silence"
    .end annotation
.end method

.method public abstract silentLoginCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Ticket"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Captcha-Id"
        .end annotation
    .end param
    .param p3  # Lcn/codemao/android/account/bean/CaptchaCodeVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/v3/app/accounts/captcha/login/silence"
    .end annotation
.end method

.method public abstract teacherUpdatePassword(Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/accounts/student/password/update"
    .end annotation
.end method

.method public abstract tencentVerify(Lcn/codemao/android/account/bean/TencentCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/TencentCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TencentCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "set_url:captcha_url"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "captcha/tencent"
    .end annotation
.end method

.method public abstract tokenRenewal()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/TokenRenewalVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tiger/user_token/expires"
    .end annotation
.end method

.method public abstract unbindQQ()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/oauth/qq/unbind"
    .end annotation
.end method

.method public abstract unbindWechat()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/oauth/wechat/unbind"
    .end annotation
.end method

.method public abstract updateBindPhone(Lcn/codemao/android/account/bean/UpdateBindPhoneVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/UpdateBindPhoneVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UpdateBindPhoneVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/phone/change"
    .end annotation
.end method

.method public abstract updateInformation(Ljava/util/Map;)Lio/reactivex/Flowable;
    .param p1  # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/info"
    .end annotation
.end method

.method public abstract updatePassword(Lcn/codemao/android/account/bean/PasswordByAccountsVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordByAccountsVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordByAccountsVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/password"
    .end annotation
.end method

.method public abstract updatePassword(Lcn/codemao/android/account/bean/PasswordByPhoneVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordByPhoneVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordByPhoneVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/password/phone"
    .end annotation
.end method

.method public abstract updateUsername(Lcn/codemao/android/account/bean/UsernameVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/UsernameVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UsernameVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/v3/app/accounts/username"
    .end annotation
.end method
