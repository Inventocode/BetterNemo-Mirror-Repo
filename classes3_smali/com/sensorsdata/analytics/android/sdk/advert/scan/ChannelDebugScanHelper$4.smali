.class final Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;
.super Ljava/lang/Object;
.source "ChannelDebugScanHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper;->showChannelDebugDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$monitorId:Ljava/lang/String;

.field final synthetic val$projectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 138
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$monitorId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$projectId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    if-eqz p1, :cond_5

    .line 142
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    :cond_5
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 145
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isTrackInstallation()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 146
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isCorrectTrackInstallation()Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_1e

    .line 190
    :cond_18
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper;->access$100(Landroid/app/Activity;)V

    goto :goto_6a

    .line 147
    :cond_1e
    :goto_1e
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_34

    .line 149
    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isGetDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 150
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper;->access$100(Landroid/app/Activity;)V

    return-void

    .line 153
    :cond_34
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 154
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$activity:Landroid/app/Activity;

    sget p2, Lcom/sensorsdata/analytics/advert/R$string;->sensors_analytics_ad_error_network:I

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_46
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$activity:Landroid/app/Activity;

    .line 158
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifierByReflection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {p1, p2, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->dialogShowDismissOld(Landroid/app/Dialog;)V

    .line 161
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$monitorId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$projectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;->val$accountId:Ljava/lang/String;

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4$1;

    invoke-direct {v6, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper$4;Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;)V

    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    :goto_6a
    return-void
.end method
