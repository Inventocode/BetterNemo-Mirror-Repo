.class public abstract Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/AbsDeepLink;
.super Ljava/lang/Object;
.source "AbsDeepLink.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;


# instance fields
.field private deepLinkUrl:Ljava/lang/String;

.field protected mCallBack:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_17

    .line 31
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/AbsDeepLink;->setDeepLinkUrl(Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public getDeepLinkUrl()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/AbsDeepLink;->deepLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDeepLinkParseFinishCallback(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/AbsDeepLink;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/AbsDeepLink;->deepLinkUrl:Ljava/lang/String;

    return-void
.end method
