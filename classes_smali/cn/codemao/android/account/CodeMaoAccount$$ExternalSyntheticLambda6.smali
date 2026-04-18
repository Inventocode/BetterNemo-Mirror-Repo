.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda6;->f$0:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda6;->f$0:Lio/reactivex/ObservableEmitter;

    check-cast p1, Lcn/codemao/android/account/bean/CaptchaVerifyVO;

    invoke-static {v0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->$r8$lambda$KTN88v1CzacKiSglBmvLlC2E2Zw(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method
