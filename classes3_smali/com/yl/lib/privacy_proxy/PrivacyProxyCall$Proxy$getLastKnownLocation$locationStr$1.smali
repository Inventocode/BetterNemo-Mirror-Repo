.class final Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyProxyCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
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


# instance fields
.field final synthetic $manager:Landroid/location/LocationManager;

.field final synthetic $provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;->$manager:Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;->$provider:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 4

    .line 546
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;

    iget-object v1, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;->$manager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;->$provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->formatLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
