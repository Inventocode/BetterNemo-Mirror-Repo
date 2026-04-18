.class Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;
.super Ljava/lang/Object;
.source "SensorsDataRemoteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

.field final synthetic val$enableConfigV:Z


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;Z)V
    .registers 3

    .line 160
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->val$enableConfigV:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;->val$enableConfigV:Z

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->access$000(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 166
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_c
    return-void
.end method
