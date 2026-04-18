.class public final Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;
.super Ljava/lang/Object;
.source "NetworkLogEventUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileUpload(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 16

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_17

    .line 55
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    :goto_18
    if-nez v2, :cond_1f

    const-string v2, "toolType"

    .line 56
    invoke-interface {v5, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-eqz p4, :cond_27

    .line 58
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_28

    :cond_27
    const/4 v0, 0x1

    :cond_28
    if-nez v0, :cond_2f

    const-string p3, "enter_from"

    .line 59
    invoke-interface {v5, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-eqz p5, :cond_36

    const-string p3, "agent_key"

    .line 62
    invoke-interface {v5, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    if-eqz p6, :cond_3d

    const-string p3, "agent_response_code"

    .line 65
    invoke-interface {v5, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    if-eqz p7, :cond_51

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    sub-long/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "agent_duration"

    invoke-interface {v5, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_51
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p8

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final jsonFetch(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 16

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_17

    .line 19
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    :goto_18
    if-nez v2, :cond_1f

    const-string v2, "toolType"

    .line 20
    invoke-interface {v5, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-eqz p4, :cond_27

    .line 22
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_28

    :cond_27
    const/4 v0, 0x1

    :cond_28
    if-nez v0, :cond_2f

    const-string p3, "enter_from"

    .line 23
    invoke-interface {v5, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-eqz p5, :cond_36

    const-string p3, "agent_url"

    .line 26
    invoke-interface {v5, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    if-eqz p6, :cond_3d

    const-string p3, "agent_response_code"

    .line 29
    invoke-interface {v5, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    if-eqz p7, :cond_51

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    sub-long/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "agent_duration"

    invoke-interface {v5, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_51
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p8

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final standbyUpload(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 14

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    .line 89
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v2, 0x1

    :goto_13
    if-nez v2, :cond_1a

    const-string v2, "toolType"

    .line 90
    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz p3, :cond_22

    .line 92
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_23

    :cond_22
    const/4 v0, 0x1

    :cond_23
    if-nez v0, :cond_2a

    const-string p2, "enter_from"

    .line 93
    invoke-interface {v4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    if-eqz p4, :cond_31

    const-string p2, "agent_key"

    .line 96
    invoke-interface {v4, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    if-eqz p5, :cond_38

    const-string p2, "agent_response_code"

    .line 99
    invoke-interface {v4, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    if-eqz p6, :cond_4c

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    sub-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "agent_duration"

    invoke-interface {v4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_4c
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v5, 0x0

    const-string v1, "ct_sdk_agent_file_upload_standby"

    move v2, p1

    move-object v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 12

    const-string v0, "serviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_11

    const-string v0, "agent_key"

    .line 121
    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-eqz p3, :cond_18

    const-string p2, "agent_response_code"

    .line 124
    invoke-interface {v5, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string p2, "agent_service_name"

    .line 126
    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v2, "ct_sdk_agent_file_upload_fail"

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
