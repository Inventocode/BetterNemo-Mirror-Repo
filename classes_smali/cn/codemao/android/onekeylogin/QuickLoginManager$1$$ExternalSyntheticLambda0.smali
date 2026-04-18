.class public final synthetic Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager$1;

    iput-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/onekeylogin/QuickLoginManager$1;

    iget-object v1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;->$r8$lambda$Ns3B41RsUvSkT3IzKZBYHzKOBEQ(Lcn/codemao/android/onekeylogin/QuickLoginManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
