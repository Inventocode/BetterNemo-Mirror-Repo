.class final Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getMacAddress$$inlined$synchronized$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyProxyCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getMacAddress(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
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
.field final synthetic $key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $manager$inlined:Landroid/net/wifi/WifiInfo;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/net/wifi/WifiInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getMacAddress$$inlined$synchronized$lambda$1;->$key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getMacAddress$$inlined$synchronized$lambda$1;->$manager$inlined:Landroid/net/wifi/WifiInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getMacAddress$$inlined$synchronized$lambda$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getMacAddress$$inlined$synchronized$lambda$1;->$manager$inlined:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manager.getMacAddress()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
