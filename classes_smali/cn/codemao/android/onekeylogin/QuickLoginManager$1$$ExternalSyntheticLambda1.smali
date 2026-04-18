.class public final synthetic Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager$1;

    iput-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager$1;

    iget-object v1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Lcn/codemao/android/account/bean/SilentLoginResultVO;

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->$r8$lambda$pRxx42WG0U5HBlWYizen4BdxDJQ(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/bean/SilentLoginResultVO;)V

    return-void
.end method
