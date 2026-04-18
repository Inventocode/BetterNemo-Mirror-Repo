.class Lcom/codemao/nemo/MainApplication$3;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainApplication;->registerActivityLifecycleCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainApplication;)V
    .registers 2

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 331
    :try_start_2
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendStartEvent()V

    goto :goto_10

    :cond_6
    const-string p1, "3"

    .line 333
    invoke-static {p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendQuitEvent(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public showPop(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 342
    invoke-static {}, Lcom/codemao/nemo/util/MiaoCodeHelper;->getInstance()Lcom/codemao/nemo/util/MiaoCodeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/util/MiaoCodeHelper;->showMiaoCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
