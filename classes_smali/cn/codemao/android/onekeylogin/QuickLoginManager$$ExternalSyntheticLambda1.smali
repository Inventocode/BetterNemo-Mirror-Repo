.class public final synthetic Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda1;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    iput-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda1;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    iget-object v1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    check-cast p1, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;

    invoke-static {v0, v1, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->$r8$lambda$G1eJ6wIV0zZgxK0epQ2yIqhREzw(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;)V

    return-void
.end method
