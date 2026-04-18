.class Lcn/codemao/android/account/CodeMaoAccount$1;
.super Ljava/lang/Object;
.source "CodeMaoAccount.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/CodeMaoAccount;->bytWaterproofWall(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
        "Lcn/codemao/android/account/bean/TencentCaptchaVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field final synthetic val$netSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3

    .line 766
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$1;->val$netSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p2, p0, Lcn/codemao/android/account/CodeMaoAccount$1;->val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcn/codemao/android/account/bean/TencentCaptchaVO;)V
    .registers 4

    .line 769
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$1;->val$netSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$1;->val$netFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/account/net/AccountRequest;->requestTicket(Lcn/codemao/android/account/bean/TencentCaptchaVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 766
    check-cast p1, Lcn/codemao/android/account/bean/TencentCaptchaVO;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/CodeMaoAccount$1;->onSuccess(Lcn/codemao/android/account/bean/TencentCaptchaVO;)V

    return-void
.end method
