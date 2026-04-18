.class public final Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;
.super Ljava/lang/Object;
.source "BleLogEventUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

.field private static startMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic connect$default(Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 47
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->connect(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic discoverResult$default(Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;Z[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 34
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->discoverResult(Z[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getPermissionDesc(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    :pswitch_5  #0x6b
    const-string v0, "没有蓝牙权限"

    goto :goto_19

    :pswitch_8  #0x69
    const-string v0, "定位未开启"

    goto :goto_19

    :pswitch_b  #0x68
    const-string v0, "蓝牙未开启"

    goto :goto_19

    :pswitch_e  #0x67
    const-string v0, "定位权限未允许"

    goto :goto_19

    :pswitch_11  #0x66
    const-string v0, "当前设备无蓝牙"

    goto :goto_19

    :pswitch_14  #0x65
    const-string v0, "多次快速启停扫描"

    goto :goto_19

    :pswitch_17  #0x64
    const-string v0, "未知错误"

    :goto_19
    :pswitch_19  #0x6a
    return-object v0

    :pswitch_data_1a
    .packed-switch 0x64
        :pswitch_17  #00000064
        :pswitch_14  #00000065
        :pswitch_11  #00000066
        :pswitch_e  #00000067
        :pswitch_b  #00000068
        :pswitch_8  #00000069
        :pswitch_19  #0000006a
        :pswitch_5  #0000006b
    .end packed-switch
.end method


# virtual methods
.method public final connect(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 48
    sget-object p3, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v0, "ct_sdk_bluetooth_connect"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final disconnect(Ljava/lang/String;)V
    .registers 6

    const-string v0, "failReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v1, "ct_sdk_bluetooth_disconnect"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final discoverResult(Z[Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->startMillis:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    .line 41
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "ct_local_names"

    .line 43
    invoke-static {v3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "duration"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const-string v2, "ct_sdk_bluetooth_discover"

    const/4 v6, 0x1

    move v3, p1

    move-object v4, p3

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final permission(I)V
    .registers 6

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v1, 0x1

    const/16 v2, 0x6a

    if-ne v2, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 26
    :goto_a
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->getPermissionDesc(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "ct_sdk_bluetooth_permission"

    .line 24
    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final startDiscover()V
    .registers 3

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->startMillis:J

    return-void
.end method
