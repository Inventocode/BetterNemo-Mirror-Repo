.class public Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;
.super Ljava/lang/Object;
.source "SAExposureProtocolImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;


# instance fields
.field private mEnable:Z

.field private mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    return-void
.end method

.method private addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    :cond_7
    return-void
.end method

.method private init(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V
    .registers 6

    if-nez p1, :cond_b

    .line 77
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;-><init>(FDZ)V

    .line 80
    :cond_b
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    return-void
.end method

.method private removeExposureView(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->removeExposureView(Landroid/view/View;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private setExposureIdentifier(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    if-eqz v0, :cond_7

    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->setExposureIdentifier(Landroid/view/View;Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .registers 2

    const-string v0, "sensors_analytics_module_exposure"

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public install(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 4

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_b

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->setModuleState(Z)V

    return-void

    .line 24
    :cond_b
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->setModuleState(Z)V

    .line 27
    :cond_1b
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->init(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    return-void
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_7c

    goto :goto_3a

    :sswitch_f
    const-string v0, "setExposureIdentifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_3a

    :cond_18
    const/4 v4, 0x3

    goto :goto_3a

    :sswitch_1a
    const-string v0, "updateExposureProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_3a

    :cond_23
    const/4 v4, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v0, "removeExposureView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_3a

    :cond_2e
    const/4 v4, 0x1

    goto :goto_3a

    :sswitch_30
    const-string v0, "addExposureView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    :goto_3a
    const/4 p1, 0x0

    packed-switch v4, :pswitch_data_8e

    goto :goto_7b

    .line 59
    :pswitch_3f  #0x3
    aget-object v0, p2, v3

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->setExposureIdentifier(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_7b

    .line 69
    :pswitch_4b  #0x2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    aget-object v1, p2, v3

    check-cast v1, Landroid/view/View;

    aget-object p2, p2, v2

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->updateExposureView(Landroid/view/View;Lorg/json/JSONObject;)V

    goto :goto_7b

    .line 62
    :pswitch_59  #0x1
    array-length v0, p2

    if-ne v0, v1, :cond_68

    .line 63
    aget-object v0, p2, v3

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->removeExposureView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_7b

    .line 65
    :cond_68
    aget-object p2, p2, v3

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->removeExposureView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_7b

    .line 56
    :pswitch_70  #0x0
    aget-object v0, p2, v3

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v2

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    invoke-direct {p0, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    :goto_7b
    return-object p1

    :sswitch_data_7c
    .sparse-switch
        0x1978338d -> :sswitch_30
        0x3aa9f6f0 -> :sswitch_25
        0x62883e43 -> :sswitch_1a
        0x67de8d12 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_70  #00000000
        :pswitch_59  #00000001
        :pswitch_4b  #00000002
        :pswitch_3f  #00000003
    .end packed-switch
.end method

.method public isEnable()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    return v0
.end method

.method public setModuleState(Z)V
    .registers 3

    .line 32
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    if-eq v0, p1, :cond_6

    .line 33
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    :cond_6
    return-void
.end method
