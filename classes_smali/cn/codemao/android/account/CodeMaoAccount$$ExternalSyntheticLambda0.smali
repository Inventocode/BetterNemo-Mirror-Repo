.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/GeetestListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda0;->f$0:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 3

    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda0;->f$0:Lio/reactivex/ObservableEmitter;

    invoke-static {v0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->$r8$lambda$rYZwXa9h0dITrcGCUolIubnWRdE(Lio/reactivex/ObservableEmitter;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method
