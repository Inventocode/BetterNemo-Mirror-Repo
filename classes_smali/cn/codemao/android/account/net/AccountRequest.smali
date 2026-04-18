.class public Lcn/codemao/android/account/net/AccountRequest;
.super Ljava/lang/Object;
.source "AccountRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckoutCommonCaptcha(Lcn/codemao/android/account/bean/CheckoutCaptcha;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CheckoutCaptcha;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 596
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->CheckoutCommonCaptcha(Lcn/codemao/android/account/bean/CheckoutCaptcha;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 597
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$37;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$37;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 598
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$000(Ljava/lang/Object;Lcn/codemao/android/account/bean/TokenRenewalVO;)Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-static {p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->saveUserInfoCache(Ljava/lang/Object;Lcn/codemao/android/account/bean/TokenRenewalVO;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static activateByOauth(Lcn/codemao/android/account/bean/OauthActivateVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/OauthActivateVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/LoginUserInfoVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 341
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->activateByOauth(Lcn/codemao/android/account/bean/OauthActivateVO;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 342
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 343
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$17;

    invoke-direct {v0, p1, p2, p2}, Lcn/codemao/android/account/net/AccountRequest$17;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 344
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static activieEmail(Lcn/codemao/android/account/bean/ActiveEmailVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/ActiveEmailVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 612
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->activieEmail(Lcn/codemao/android/account/bean/ActiveEmailVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 613
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$39;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$39;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 614
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static bindPhone(Lcn/codemao/android/account/bean/BindPhoneVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/BindPhoneVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 496
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->bindPhone(Lcn/codemao/android/account/bean/BindPhoneVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 497
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$28;

    invoke-direct {v0, p1, p2, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$28;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 498
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static bindQQ(Lcn/codemao/android/account/bean/QQBindVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/QQBindVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 462
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->bindQQ(Lcn/codemao/android/account/bean/QQBindVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 463
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$24;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$24;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 464
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static bindWechat(Lcn/codemao/android/account/bean/WechatBindVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/WechatBindVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 442
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->bindWechat(Lcn/codemao/android/account/bean/WechatBindVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 443
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$22;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$22;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 444
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static captchaRule(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcn/codemao/android/account/bean/RuleBean;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/RuleBean;-><init>()V

    .line 147
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/RuleBean;->setIdentity(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/RuleBean;->setPid(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/RuleBean;->setScene(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object p0

    invoke-interface {p0, v0}, Lcn/codemao/android/account/net/V3AccountApi;->captchaRule(Lcn/codemao/android/account/bean/RuleBean;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 151
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$5;

    invoke-direct {p1, p2, p3}, Lcn/codemao/android/account/net/AccountRequest$5;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 152
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static checkBindStatusByOauths(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/BindStatusVO;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 480
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/V3AccountApi;->checkBindStatusByOauths()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 481
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$26;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$26;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 482
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static checkOnekeyLoginToken(Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/SilentLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 839
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->checkOnekeyLoginToken(Lcn/codemao/android/account/bean/OnekeyLoginCheckRequestVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 840
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$52;

    invoke-direct {v0, p1, p2, p2}, Lcn/codemao/android/account/net/AccountRequest$52;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 841
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static checkPhoneExisting(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 523
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->checkPhoneExisting(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 524
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$29;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$29;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 525
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static checkoutResetTicket(Lcn/codemao/android/account/bean/TicketCheckoutVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TicketCheckoutVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/TicketResult;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 564
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->checkoutResetTicket(Lcn/codemao/android/account/bean/TicketCheckoutVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 565
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$33;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$33;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 566
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static emailRegister(Lcn/codemao/android/account/bean/EmailRegisterVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/EmailRegisterVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 604
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->emailRegister(Lcn/codemao/android/account/bean/EmailRegisterVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 605
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$38;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$38;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 606
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static fetchVoiceCaptcha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 8

    .line 918
    new-instance v0, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;-><init>()V

    .line 919
    invoke-virtual {v0, p3}, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->setPhoneNum(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0, p4}, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->setType(Ljava/lang/String;)V

    const-string p3, "THIRD_PARTY"

    .line 921
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 922
    invoke-virtual {v0, p2}, Lcn/codemao/android/account/bean/VoiceCaptchaRequest;->setOauthTicket(Ljava/lang/String;)V

    .line 925
    :cond_16
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0}, Lcn/codemao/android/account/net/V3AccountApi;->fetchVoiceCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/VoiceCaptchaRequest;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 926
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$54;

    invoke-direct {p1, p5, p6}, Lcn/codemao/android/account/net/AccountRequest$54;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 927
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static findAccountAppLoginDeviceList(ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/BindDeviceListVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 946
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 947
    new-instance v1, Lcn/codemao/android/account/bean/BindDevicePageDTO;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcn/codemao/android/account/bean/BindDevicePageDTO;-><init>(II)V

    .line 948
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcn/codemao/android/account/net/V3AccountApi;->findAccountAppLoginDeviceList(Ljava/lang/String;Lcn/codemao/android/account/bean/BindDevicePageDTO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 949
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$56;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$56;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 950
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static findUserBindDeviceStatus(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/BindDeviceStatusVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 936
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/codemao/android/account/net/V3AccountApi;->findUserBindDeviceStatus(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 938
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$55;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$55;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static geetestRegister(Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 818
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->geetestRegister(Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 819
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$50;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$50;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 820
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static geetestVerify(Lokhttp3/RequestBody;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 786
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->geetestVerify(Lokhttp3/RequestBody;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 787
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$47;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$47;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 788
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static getOnekeyLoginInfo(Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 830
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->getOnekeyLoginInfo(Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 831
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 832
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$51;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$51;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 833
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 628
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/V3AccountApi;->getPrivacyInfo()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 629
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$41;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$41;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 630
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static getUserInfoProfile(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/UserInfoVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 649
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/V3AccountApi;->getUserInfoProfile()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 650
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$42;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$42;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 651
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static getWechatCode(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 774
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/codemao/android/account/net/V3AccountApi;->loginByWechatCode(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 775
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$46;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$46;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 776
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static loginByBBK(Lcn/codemao/android/account/bean/BBKLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/BBKLoginVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/BBKLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 400
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->loginBBK(Lcn/codemao/android/account/bean/BBKLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 401
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$20;

    invoke-direct {v0, p1, p2, p2}, Lcn/codemao/android/account/net/AccountRequest$20;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 402
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static loginByCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 11
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
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 211
    invoke-static/range {v0 .. v5}, Lcn/codemao/android/account/net/AccountRequest;->loginByCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/AuthListener;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private static loginByCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/AuthListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
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
            "Lcn/codemao/android/account/listener/AuthListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 219
    new-instance p2, Lcn/codemao/android/account/bean/CodeLoginVO;

    invoke-direct {p2}, Lcn/codemao/android/account/bean/CodeLoginVO;-><init>()V

    .line 220
    invoke-virtual {p2, p0}, Lcn/codemao/android/account/bean/CodeLoginVO;->setPhone_number(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2, p1}, Lcn/codemao/android/account/bean/CodeLoginVO;->setCaptcha(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcn/codemao/android/account/bean/CodeLoginVO;->setPid(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object p0

    invoke-interface {p0, p2}, Lcn/codemao/android/account/net/V3AccountApi;->loginByCodeWith(Lcn/codemao/android/account/bean/CodeLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 227
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$9;

    invoke-direct {p1, p3, p4, p4}, Lcn/codemao/android/account/net/AccountRequest$9;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 228
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static loginByDuerOS(Ljava/util/List;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 7
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
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 977
    new-instance v0, Lcn/codemao/android/account/bean/DuerOSLoginVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;-><init>()V

    .line 978
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->setAgreementIds(Ljava/util/List;)V

    .line 979
    invoke-static {}, Lcn/codemao/android/account/util/DuerOSUtil;->getModel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->setModel(Ljava/lang/String;)V

    .line 980
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 981
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_20

    .line 983
    :cond_19
    invoke-static {}, Lcn/codemao/android/account/util/DuerOSUtil;->getSerialNo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->setSerialNumber(Ljava/lang/String;)V

    .line 985
    :goto_20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->setNonceStr(Ljava/lang/String;)V

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->setTimestamp(J)V

    .line 987
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->setPid(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->generateSign()V

    .line 990
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object p0

    invoke-interface {p0, v0}, Lcn/codemao/android/account/net/V3AccountApi;->loginByDuerOS(Lcn/codemao/android/account/bean/DuerOSLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 991
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$59;

    invoke-direct {p1, p2, p3, p3}, Lcn/codemao/android/account/net/AccountRequest$59;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 992
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static loginByPassword(Lcn/codemao/android/account/listener/AuthListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/AuthListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AccountLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 241
    new-instance p0, Lcn/codemao/android/account/bean/LoginVO;

    invoke-direct {p0}, Lcn/codemao/android/account/bean/LoginVO;-><init>()V

    .line 242
    invoke-virtual {p0, p3}, Lcn/codemao/android/account/bean/LoginVO;->setIdentity(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p4}, Lcn/codemao/android/account/bean/LoginVO;->setPassword(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcn/codemao/android/account/bean/LoginVO;->setPid(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p3

    invoke-virtual {p3}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object p3

    invoke-interface {p3, p1, p2, p0}, Lcn/codemao/android/account/net/V3AccountApi;->loginByPassword(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/LoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 246
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$10;

    invoke-direct {p1, p5, p6, p6}, Lcn/codemao/android/account/net/AccountRequest$10;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 247
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static loginByQQ(Lcn/codemao/android/account/bean/QQLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/QQLoginVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/QQLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 378
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->loginByQQ(Lcn/codemao/android/account/bean/QQLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 379
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$19;

    invoke-direct {v0, p1, p2, p2}, Lcn/codemao/android/account/net/AccountRequest$19;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 380
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static loginByReadboy(Lcn/codemao/android/account/bean/ReadBoyLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/ReadBoyLoginVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/ReadboyLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 422
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->loginByReadboy(Lcn/codemao/android/account/bean/ReadBoyLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 423
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$21;

    invoke-direct {v0, p1, p2, p2}, Lcn/codemao/android/account/net/AccountRequest$21;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 424
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static loginByWechat(Lcn/codemao/android/account/bean/WechatLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/WechatLoginVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/WechatLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 357
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->loginByWechat(Lcn/codemao/android/account/bean/WechatLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 358
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$18;

    invoke-direct {v0, p1, p2, p2}, Lcn/codemao/android/account/net/AccountRequest$18;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 359
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static logout(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 580
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/V3AccountApi;->logout()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 581
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$35;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$35;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 582
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static neteaseVerify(Lcn/codemao/android/account/bean/NeteaseRequest;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/NeteaseRequest;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 798
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->neteaseVerify(Lcn/codemao/android/account/bean/NeteaseRequest;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 799
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$48;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$48;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 800
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static nextDataVerify(Lcn/codemao/android/account/bean/NextDataRequest;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/NextDataRequest;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 808
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->nextDataVerify(Lcn/codemao/android/account/bean/NextDataRequest;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 809
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$49;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$49;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 810
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static noaheduLogin(Lcn/codemao/android/account/bean/NoaheduLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/NoaheduLoginVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/NoaheduLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->noaheduLogin(Lcn/codemao/android/account/bean/NoaheduLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 106
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$1;

    invoke-direct {v0, p1, p2, p2}, Lcn/codemao/android/account/net/AccountRequest$1;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 107
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static onekeyLoginErrUpload(Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4

    .line 854
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->onekeyLoginErrUpload(Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 855
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$53;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$53;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 856
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static queryGradeList(JLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/GradeInfoVO;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 969
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcn/codemao/android/account/net/V3AccountApi;->queryAllGradeList(J)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 970
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$58;

    invoke-direct {p1, p2, p3}, Lcn/codemao/android/account/net/AccountRequest$58;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 971
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static registerByPhone(Lcn/codemao/android/account/bean/CodeRegisterVO;Ljava/lang/Boolean;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CodeRegisterVO;",
            "Ljava/lang/Boolean;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 191
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->registerByPhoneWith(Lcn/codemao/android/account/bean/CodeRegisterVO;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 192
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 193
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v6, Lcn/codemao/android/account/net/AccountRequest$8;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/codemao/android/account/net/AccountRequest$8;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/Boolean;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;)V

    .line 194
    invoke-virtual {p0, v6}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static removeBindDevice(JLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 958
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v1

    invoke-interface {v1, v0, p0, p1}, Lcn/codemao/android/account/net/V3AccountApi;->removeBindDevice(Ljava/lang/String;J)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 960
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$57;

    invoke-direct {p1, p2, p3}, Lcn/codemao/android/account/net/AccountRequest$57;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 961
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static requestTicket(Lcn/codemao/android/account/bean/TencentCaptchaVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TencentCaptchaVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->tencentVerify(Lcn/codemao/android/account/bean/TencentCaptchaVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 177
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$7;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$7;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 178
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static requestTicket(Ljava/util/Map;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/TicketVo;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->requestTicket(Ljava/util/Map;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 164
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$6;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$6;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 165
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static resetPassword(Lcn/codemao/android/account/bean/ResetPasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/ResetPasswordVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 572
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->resetPassword(Lcn/codemao/android/account/bean/ResetPasswordVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 573
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$34;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$34;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 574
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method private static saveUserInfoCache(Ljava/lang/Object;Lcn/codemao/android/account/bean/TokenRenewalVO;)Ljava/lang/Object;
    .registers 9

    const-string v0, ""

    .line 669
    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setReadboyUid(Ljava/lang/String;)V

    .line 674
    instance-of v0, p0, Lcn/codemao/android/account/bean/ReadboyLoginResultVO;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 675
    move-object v0, p0

    check-cast v0, Lcn/codemao/android/account/bean/ReadboyLoginResultVO;

    .line 676
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    .line 677
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getAuth()Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;

    move-result-object v2

    .line 678
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 679
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->getPhone_number()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/ReadboyLoginResultVO;->getThirdPartyUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setReadboyUid(Ljava/lang/String;)V

    move-object v0, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_b9

    .line 682
    :cond_2e
    instance-of v0, p0, Lcn/codemao/android/account/bean/AccountLoginResultVO;

    if-eqz v0, :cond_4e

    .line 683
    move-object v0, p0

    check-cast v0, Lcn/codemao/android/account/bean/AccountLoginResultVO;

    .line 684
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/AccountLoginResultVO;->getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    .line 685
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/AccountLoginResultVO;->getAuth()Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->getPhone_number()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    move-object v6, v2

    move-object v2, v1

    :goto_4b
    move-object v1, v6

    goto/16 :goto_b9

    .line 689
    :cond_4e
    instance-of v0, p0, Lcn/codemao/android/account/bean/LoginUserInfoVO;

    if-eqz v0, :cond_6d

    .line 690
    move-object v0, p0

    check-cast v0, Lcn/codemao/android/account/bean/LoginUserInfoVO;

    .line 691
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getAuth()Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;

    move-result-object v1

    .line 692
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    .line 693
    invoke-virtual {v1}, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-virtual {v1}, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->getPhone_number()Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-virtual {v1}, Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_4b

    .line 696
    :cond_6d
    instance-of v0, p0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;

    if-eqz v0, :cond_b6

    .line 697
    move-object v0, p0

    check-cast v0, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;

    .line 698
    new-instance v2, Lcn/codemao/android/account/bean/UserInfoVO;

    invoke-direct {v2}, Lcn/codemao/android/account/bean/UserInfoVO;-><init>()V

    .line 699
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->getUserInfoVO()Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;

    move-result-object v3

    .line 700
    invoke-virtual {v3}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->getAvatar_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/codemao/android/account/bean/UserInfoVO;->setAvatar_url(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v3}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->getBirthday()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/codemao/android/account/bean/UserInfoVO;->setBirthday(J)V

    .line 702
    invoke-virtual {v3}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/codemao/android/account/bean/UserInfoVO;->setDescription(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v3}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->getFullname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/codemao/android/account/bean/UserInfoVO;->setFullname(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/codemao/android/account/bean/UserInfoVO;->setId(Ljava/lang/Long;)V

    .line 705
    invoke-virtual {v3}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/codemao/android/account/bean/UserInfoVO;->setNickname(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v3}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO$UserInfoBean;->getSex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/codemao/android/account/bean/UserInfoVO;->setSex(I)V

    .line 707
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/NoaheduLoginResultVO;->getToken()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_b9

    :cond_b6
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    .line 710
    :goto_b9
    invoke-static {v1}, Lcn/codemao/android/account/util/PlatformConfig;->setTokenValue(Ljava/lang/String;)V

    .line 711
    invoke-static {v3}, Lcn/codemao/android/account/util/PlatformConfig;->setPhoneNumber(Ljava/lang/String;)V

    .line 712
    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setEmail(Ljava/lang/String;)V

    .line 713
    invoke-static {v2}, Lcn/codemao/android/account/util/PlatformConfig;->setUserInfo(Lcn/codemao/android/account/bean/UserInfoVO;)Lcn/codemao/android/account/bean/UserInfoVO;

    .line 714
    invoke-static {p1}, Lcn/codemao/android/account/util/PlatformConfig;->setTokenInfo(Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    .line 715
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clearTokenTime()V

    return-object p0
.end method

.method public static sendBindPhoneCode(Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 488
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->sendBindPhoneCode(Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 489
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$27;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$27;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 490
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static sendBindPhoneCodeByOauth(Lcn/codemao/android/account/bean/OauthCaptchaVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/OauthCaptchaVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 333
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->sendBindPhoneCodeByOauth(Lcn/codemao/android/account/bean/OauthCaptchaVO;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 334
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 335
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$16;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$16;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 336
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static sendCommonCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 588
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->sendCommonCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 589
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$36;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$36;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 590
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static sendLoginCode(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 130
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/codemao/android/account/net/V3AccountApi;->sendLoginCodeWith(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 131
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$3;

    invoke-direct {p1, p3, p4}, Lcn/codemao/android/account/net/AccountRequest$3;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 132
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static sendRegisterCode(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/codemao/android/account/net/V3AccountApi;->sendRegisterCodeWith(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 122
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$2;

    invoke-direct {p1, p3, p4}, Lcn/codemao/android/account/net/AccountRequest$2;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 123
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static sendResetPasswordCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 556
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/codemao/android/account/net/V3AccountApi;->sendResetPasswordCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 557
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$32;

    invoke-direct {p1, p3, p4}, Lcn/codemao/android/account/net/AccountRequest$32;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 558
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static sendUpdateBindPhoneCode(Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 530
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->sendUpdateBindPhoneCode(Lcn/codemao/android/account/bean/UpdataPhoneCaptchaVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 531
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$30;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$30;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 532
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static sendUpdatePasswordCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 287
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->sendUpdatePasswordCaptcha(Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 288
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$12;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$12;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 289
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static setDefaultPassword(Lcn/codemao/android/account/bean/PasswordFirstVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordFirstVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->setDefaultPassword(Lcn/codemao/android/account/bean/PasswordFirstVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 139
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$4;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$4;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 140
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static silentLogin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
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
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 754
    new-instance v0, Lcn/codemao/android/account/bean/SilentLoginVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/SilentLoginVO;-><init>()V

    .line 755
    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/SilentLoginVO;->setPhone_number(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/SilentLoginVO;->setCaptcha(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/SilentLoginVO;->setPid(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p2}, Lcn/codemao/android/account/bean/SilentLoginVO;->setAgreementIds(Ljava/util/List;)V

    .line 759
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object p0

    invoke-interface {p0, v0}, Lcn/codemao/android/account/net/V3AccountApi;->silentLogin(Lcn/codemao/android/account/bean/SilentLoginVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 760
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$45;

    invoke-direct {p1, p3, p4, p4}, Lcn/codemao/android/account/net/AccountRequest$45;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 761
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static silentLoginCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/bean/CaptchaCodeVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 747
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/codemao/android/account/net/V3AccountApi;->silentLoginCaptcha(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/CaptchaCodeVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 748
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance p1, Lcn/codemao/android/account/net/AccountRequest$44;

    invoke-direct {p1, p3, p4}, Lcn/codemao/android/account/net/AccountRequest$44;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 749
    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static teacherUpdatePassword(Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 621
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->teacherUpdatePassword(Lcn/codemao/android/account/bean/TeacherUpdatePasswordVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 622
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$40;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$40;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 623
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static tokenRenewal(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/TokenRenewalVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 725
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/V3AccountApi;->tokenRenewal()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 726
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$43;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$43;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 727
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static unbindQQ(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 472
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/V3AccountApi;->unbindQQ()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 473
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$25;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$25;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 474
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static unbindWechat(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 451
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/V3AccountApi;->unbindWechat()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 452
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$23;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$23;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 453
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static updateBindPhone(Lcn/codemao/android/account/bean/UpdateBindPhoneVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UpdateBindPhoneVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 538
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->updateBindPhone(Lcn/codemao/android/account/bean/UpdateBindPhoneVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 539
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$31;

    invoke-direct {v0, p1, p2, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$31;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 540
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static updateInformation(Lcn/codemao/android/account/bean/UpdateInformationVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UpdateInformationVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/UserInfoVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 321
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/account/bean/UpdateInformationVO;->getMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->updateInformation(Ljava/util/Map;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 322
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$15;

    invoke-direct {v0, p1, p2, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$15;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 323
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static updatePassword(Lcn/codemao/android/account/bean/PasswordByAccountsVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordByAccountsVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 295
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->updatePassword(Lcn/codemao/android/account/bean/PasswordByAccountsVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 296
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$13;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$13;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 297
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static updatePassword(Lcn/codemao/android/account/bean/PasswordByPhoneVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/PasswordByPhoneVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 308
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->updatePassword(Lcn/codemao/android/account/bean/PasswordByPhoneVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 309
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$14;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$14;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 310
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static updateUsername(Lcn/codemao/android/account/bean/UsernameVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/bean/UsernameVO;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 269
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/codemao/android/account/net/V3AccountApi;->updateUsername(Lcn/codemao/android/account/bean/UsernameVO;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 270
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$11;

    invoke-direct {v0, p1, p2, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$11;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 271
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method
