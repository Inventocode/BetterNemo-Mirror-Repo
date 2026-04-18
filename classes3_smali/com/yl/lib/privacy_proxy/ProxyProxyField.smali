.class public Lcom/yl/lib/privacy_proxy/ProxyProxyField;
.super Ljava/lang/Object;
.source "ProxyProxyField.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final proxyBrand:Ljava/lang/String;

.field public static final proxySerial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    invoke-static {}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/privacy_proxy/ProxyProxyField;->proxySerial:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getBrand()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/privacy_proxy/ProxyProxyField;->proxyBrand:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
