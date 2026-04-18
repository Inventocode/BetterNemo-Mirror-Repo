.class Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$1;
.super Ljava/lang/Object;
.source "SAContextManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->executeDelayTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->access$000(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAnonymousId()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 105
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->identify(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
