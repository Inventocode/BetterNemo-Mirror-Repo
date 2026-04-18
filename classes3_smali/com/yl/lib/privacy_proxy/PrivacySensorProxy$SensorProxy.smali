.class public final Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;
.super Ljava/lang/Object;
.source "PrivacySensorProxy.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/privacy_proxy/PrivacySensorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorProxy"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacySensorProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacySensorProxy.kt\ncom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy\n*L\n1#1,236:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;

    invoke-direct {v0}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSensorList(Landroid/hardware/SensorManager;I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/SensorManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->transformSensorTypeToString(I)Lkotlin/Pair;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    const-string v3, "获取"

    const-string v4, "getSensorList-"

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_59

    .line 113
    sget-object v6, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    .line 113
    invoke-static/range {v6 .. v13}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 118
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 120
    :cond_59
    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 124
    new-instance v3, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;

    invoke-direct {v3, p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;-><init>(Landroid/hardware/SensorManager;I)V

    .line 120
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final logSensorManager(Landroid/hardware/Sensor;)V
    .registers 10

    if-eqz p0, :cond_3c

    .line 134
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->transformSensorTypeToString(I)Lkotlin/Pair;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 137
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "注册-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "传感器,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-string v2, "registerListener"

    .line 137
    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    :cond_3c
    return-void
.end method

.method public static final registerListener(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5

    .line 38
    invoke-static {p2}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->logSensorManager(Landroid/hardware/Sensor;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static final registerListener(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .registers 6

    .line 53
    invoke-static {p2}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->logSensorManager(Landroid/hardware/Sensor;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static final registerListener(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 7

    .line 94
    invoke-static {p2}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->logSensorManager(Landroid/hardware/Sensor;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 95
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static final registerListener(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 6

    .line 74
    invoke-static {p2}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->logSensorManager(Landroid/hardware/Sensor;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static final transformSensorTypeToString(I)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "用来感应手机正面的光线强弱"

    const-string v1, ""

    packed-switch p0, :pswitch_data_4e

    :pswitch_7  #0x7
    move-object v0, v1

    goto :goto_48

    :pswitch_9  #0x15
    const-string p0, "心跳速率"

    goto :goto_41

    :pswitch_c  #0x14
    const-string p0, "地磁旋转矢量"

    goto :goto_41

    :pswitch_f  #0x13
    const-string p0, "步行计数"

    goto :goto_41

    :pswitch_12  #0x12
    const-string p0, "步行检测"

    goto :goto_41

    :pswitch_15  #0x11
    const-string p0, "特殊动作"

    goto :goto_41

    :pswitch_18  #0x10
    const-string p0, "未校准陀螺仪"

    goto :goto_41

    :pswitch_1b  #0xf
    const-string p0, "无标定旋转矢量"

    goto :goto_41

    :pswitch_1e  #0xe
    const-string p0, "无标定磁场"

    goto :goto_41

    :pswitch_21  #0xd
    const-string p0, "环境温度"

    goto :goto_41

    :pswitch_24  #0xc
    const-string p0, "相对湿度"

    goto :goto_41

    :pswitch_27  #0xb
    const-string p0, "旋转矢量"

    goto :goto_41

    :pswitch_2a  #0xa
    const-string p0, "线性加速度"

    goto :goto_41

    :pswitch_2d  #0x9
    const-string p0, "重力"

    goto :goto_41

    :pswitch_30  #0x8
    const-string p0, "距离"

    goto :goto_41

    :pswitch_33  #0x6
    const-string p0, "压力"

    goto :goto_41

    :pswitch_36  #0x5
    const-string v1, "光线 "

    goto :goto_48

    :pswitch_39  #0x4
    const-string v1, "陀螺仪"

    goto :goto_48

    :pswitch_3c  #0x3
    const-string p0, "方向"

    goto :goto_41

    :pswitch_3f  #0x2
    const-string p0, "磁场"

    :goto_41
    move-object v0, v1

    move-object v1, p0

    goto :goto_48

    :pswitch_44  #0x1
    const-string v1, "加速度"

    const-string v0, "常用于摇一摇"

    .line 233
    :goto_48
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_3f  #00000002
        :pswitch_3c  #00000003
        :pswitch_39  #00000004
        :pswitch_36  #00000005
        :pswitch_33  #00000006
        :pswitch_7  #00000007
        :pswitch_30  #00000008
        :pswitch_2d  #00000009
        :pswitch_2a  #0000000a
        :pswitch_27  #0000000b
        :pswitch_24  #0000000c
        :pswitch_21  #0000000d
        :pswitch_1e  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_18  #00000010
        :pswitch_15  #00000011
        :pswitch_12  #00000012
        :pswitch_f  #00000013
        :pswitch_c  #00000014
        :pswitch_9  #00000015
    .end packed-switch
.end method
