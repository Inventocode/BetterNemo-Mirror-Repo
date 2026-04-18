.class final Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyProxyCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getBrand()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;

    invoke-direct {v0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 845
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "getBrand Value"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 846
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Build.BRAND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
