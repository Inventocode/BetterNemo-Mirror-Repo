.class public Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils;
.super Ljava/lang/Object;
.source "ExceptionUploadUtils.java"


# direct methods
.method public static uploadErr(IILjava/lang/String;)V
    .registers 5

    .line 29
    new-instance v0, Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;-><init>()V

    const-string v1, "Android"

    .line 30
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;->setPlatform(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getCurrentSupplierType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;->setProvider(Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;->setCode(Ljava/lang/String;)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;->setProvider_code(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p2}, Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;->setErr_msg(Ljava/lang/String;)V

    .line 35
    new-instance p0, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils$1;

    invoke-direct {p0}, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils$1;-><init>()V

    new-instance p1, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils$2;

    invoke-direct {p1}, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils$2;-><init>()V

    invoke-static {v0, p0, p1}, Lcn/codemao/android/account/net/AccountRequest;->onekeyLoginErrUpload(Lcn/codemao/android/account/bean/OnekeyLoginExceptionVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
