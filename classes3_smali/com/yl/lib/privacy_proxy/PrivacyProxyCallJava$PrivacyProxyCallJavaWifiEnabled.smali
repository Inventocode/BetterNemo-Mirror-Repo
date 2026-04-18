.class public Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava$PrivacyProxyCallJavaWifiEnabled;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyProxyCallJava.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyProxyCallJavaWifiEnabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final $manager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiManager"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 78
    iput-object p1, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava$PrivacyProxyCallJavaWifiEnabled;->$manager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Boolean;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava$PrivacyProxyCallJavaWifiEnabled;->$manager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava$PrivacyProxyCallJavaWifiEnabled;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
