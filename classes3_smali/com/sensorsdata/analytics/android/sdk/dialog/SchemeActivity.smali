.class public Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;
.super Landroid/app/Activity;
.source "SchemeActivity.java"


# static fields
.field public static final SCHEME_ACTIVITY_SIGN:Ljava/lang/String; = "#*#scheme_activity_sign#*#"

.field private static final TAG:Ljava/lang/String; = "SA.SchemeActivity"

.field public static isPopWindow:Z = false


# instance fields
.field private isStartApp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SA.SchemeActivity"

    const-string v0, "onCreate"

    .line 53
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 55
    :try_start_b
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1b

    const v0, 0x103012b

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_26

    :cond_1b
    const v0, 0x103000c

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 65
    :goto_26
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    instance-of v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-eqz v0, :cond_37

    const-string v0, "onCreate SensorsDataAPIEmptyImplementation"

    .line 66
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    goto :goto_43

    :cond_37
    const-string v0, "onCreate handleSchemeUrl"

    .line 69
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_43
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "SA.SchemeActivity"

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 78
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    instance-of p1, p1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-eqz p1, :cond_2a

    const-string p1, "onNewIntent SensorsDataAPIEmptyImplementation"

    .line 81
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    goto :goto_3b

    :cond_2a
    const-string p1, "onNewIntent handleSchemeUrl"

    .line 84
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 88
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_3b
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "SA.SchemeActivity"

    const-string v1, "onPause"

    .line 105
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isPopWindow:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isPopWindow:Z

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "SA.SchemeActivity"

    const-string v1, "onResume"

    .line 95
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    .line 98
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    :cond_14
    return-void
.end method
