.class public final synthetic Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    iput-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    iget-object v1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->$r8$lambda$Fe4Ik-5ZHhkuxs-LH1IW81CKlqQ(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
