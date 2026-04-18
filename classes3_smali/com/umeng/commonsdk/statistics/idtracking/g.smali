.class public Lcom/umeng/commonsdk/statistics/idtracking/g;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "MacTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "mac"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mac"

    .line 15
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 3

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    .line 25
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v1, :cond_f

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_f
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method
