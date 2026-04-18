.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcn/codemao/android/account/listener/NetSuccessResultListener;

.field public final synthetic f$3:Lcn/codemao/android/account/listener/NetFailResultListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$2:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p4, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$3:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$2:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v3, p0, Lcn/codemao/android/account/CodeMaoAccount$$ExternalSyntheticLambda10;->f$3:Lcn/codemao/android/account/listener/NetFailResultListener;

    check-cast p1, Lcn/codemao/android/account/bean/CaptchaInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/codemao/android/account/CodeMaoAccount;->$r8$lambda$TKZlbdHwaNHjjGWVnNiHtc7Zb48(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/CaptchaInfo;)V

    return-void
.end method
