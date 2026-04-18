.class public interface abstract Lcn/codemao/android/account/net/AccountApi;
.super Ljava/lang/Object;
.source "AccountApi.java"


# virtual methods
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
        value = "tiger/accounts/bind_phone "
    .end annotation
.end method

.method public abstract bindPhoneCode(Lcn/codemao/android/account/bean/PasswordCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/captcha/bind_phone"
    .end annotation
.end method

.method public abstract bindPhonePassword(Lcn/codemao/android/account/bean/PasswordVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/accounts/oauth/bind_phone"
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
        value = "tiger/accounts/v2/oauth/qq/bind/mobile"
    .end annotation
.end method

.method public abstract bindStatus()Lio/reactivex/Flowable;
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
        value = "tiger/accounts/v2/oauths"
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
        value = "tiger/accounts/v2/oauth/wechat/bind"
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

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/v2/captcha/check"
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

.method public abstract getAuthInfo()Lio/reactivex/Flowable;
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
        value = "tiger/accounts/basic_auth"
    .end annotation
.end method

.method public abstract getInformation()Lio/reactivex/Flowable;
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
        value = "tiger/account"
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
        value = "tiger/accounts/phone/login"
    .end annotation
.end method

.method public abstract loginByPassword(Lcn/codemao/android/account/bean/LoginVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/LoginVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/LoginVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/AccountLoginResultVO;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/login"
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
        value = "tiger/accounts/v2/oauth/qq/mobile"
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
        value = "tiger/accounts/v2/oauth/wechat"
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

.method public abstract resetPassword(Lcn/codemao/android/account/bean/PasswordTokenVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordTokenVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordTokenVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/v2/password/reset"
    .end annotation
.end method

.method public abstract resetPassword(Lcn/codemao/android/account/bean/PasswordVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordVO;",
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
        value = "tiger/accounts/password/reset"
    .end annotation
.end method

.method public abstract resetPasswordCaptcha(Lcn/codemao/android/account/bean/GeetestVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/GeetestVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/GeetestVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/captcha/password/reset"
    .end annotation
.end method

.method public abstract sendCode(Lcn/codemao/android/account/bean/GeetestVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/GeetestVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/GeetestVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/captcha/login"
    .end annotation
.end method

.method public abstract setPassword(Lcn/codemao/android/account/bean/PasswordFirstVO;)Lio/reactivex/Flowable;
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

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/password/set"
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

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/v2/oauth/qq/unbind"
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

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/v2/oauth/wechat/unbind"
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
        value = "tiger/accounts/update_bind_phone"
    .end annotation
.end method

.method public abstract updateBindPhoneCode(Lcn/codemao/android/account/bean/PasswordCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/captcha/update_bind_phone"
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
        value = "tiger/accounts/user_info/update"
    .end annotation
.end method

.method public abstract updatePassword(Lcn/codemao/android/account/bean/PasswordTokenVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordTokenVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordTokenVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/accounts/v2/password/update"
    .end annotation
.end method

.method public abstract updatePassword(Lcn/codemao/android/account/bean/PasswordVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/accounts/password/update"
    .end annotation
.end method

.method public abstract updatePasswordCaptcha(Lcn/codemao/android/account/bean/PasswordCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/captcha/password/update"
    .end annotation
.end method

.method public abstract updateUsername(Lcn/codemao/android/account/bean/PasswordVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tiger/accounts/username/update"
    .end annotation
.end method

.method public abstract updateUsernameCaptcha(Lcn/codemao/android/account/bean/PasswordCaptchaVO;)Lio/reactivex/Flowable;
    .param p1  # Lcn/codemao/android/account/bean/PasswordCaptchaVO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordCaptchaVO;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tiger/accounts/captcha/username/update"
    .end annotation
.end method
