.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/GeetestListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcn/codemao/android/account/bean/CaptchaCodeVO;

.field public final synthetic f$3:Lcn/codemao/android/account/listener/NetSuccessResultListener;

.field public final synthetic f$4:Lcn/codemao/android/account/listener/NetSuccessResultListener;

.field public final synthetic f$5:Lcn/codemao/android/account/listener/NetFailResultListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput p2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$2:Lcn/codemao/android/account/bean/CaptchaCodeVO;

    iput-object p4, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$3:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p5, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$4:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p6, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$5:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 9

    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget v1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$2:Lcn/codemao/android/account/bean/CaptchaCodeVO;

    iget-object v3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$3:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v4, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$4:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v5, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda1;->f$5:Lcn/codemao/android/account/listener/NetFailResultListener;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcn/codemao/android/account/CodeMaoAccount;->$r8$lambda$kmTrTw5S0jB5x9lIgsuJNeatOrA(Ljava/lang/String;ILcn/codemao/android/account/bean/CaptchaCodeVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method
