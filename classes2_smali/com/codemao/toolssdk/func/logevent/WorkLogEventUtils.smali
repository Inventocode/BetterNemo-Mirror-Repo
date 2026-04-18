.class public final Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;
.super Ljava/lang/Object;
.source "WorkLogEventUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkLogEventUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkLogEventUtils.kt\ncom/codemao/toolssdk/func/logevent/WorkLogEventUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,182:1\n211#2,2:183\n211#2,2:185\n*S KotlinDebug\n*F\n+ 1 WorkLogEventUtils.kt\ncom/codemao/toolssdk/func/logevent/WorkLogEventUtils\n*L\n72#1:183,2\n153#1:185,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

.field private static startMillis:J

.field private static workUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    const-string v0, ""

    .line 8
    sput-object v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->workUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic loadEnd$default(Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V
    .registers 18

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v6, v1

    goto :goto_8

    :cond_7
    move-object v6, p4

    :goto_8
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_10

    :cond_f
    move v7, p5

    :goto_10
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_16

    move-object v8, v1

    goto :goto_17

    :cond_16
    move-object v8, p6

    :goto_17
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 52
    invoke-virtual/range {v2 .. v8}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadEnd(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public static synthetic save$default(Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .registers 18

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v6, v1

    goto :goto_8

    :cond_7
    move-object v6, p4

    :goto_8
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_e

    move-object v7, v1

    goto :goto_f

    :cond_e
    move-object v7, p5

    :goto_f
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_17

    .line 112
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v8, v0

    goto :goto_18

    :cond_17
    move-object v8, p6

    :goto_18
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 106
    invoke-virtual/range {v2 .. v8}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->save(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final clientReceiveError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "收到client错误:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 146
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3a

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v2, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v2, 0x1

    :goto_3b
    if-nez v2, :cond_42

    const-string v2, "toolType"

    .line 148
    invoke-interface {v6, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    if-eqz p2, :cond_4a

    .line 150
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4b

    :cond_4a
    const/4 v0, 0x1

    :cond_4b
    if-nez v0, :cond_52

    const-string p1, "enter_from"

    .line 151
    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_52
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v6, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 156
    :cond_72
    sget-object v2, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string v3, "ct_sdk_loading_receive_error"

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final lifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "page_lifecycle"

    .line 167
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1f

    .line 168
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    if-nez p1, :cond_27

    const-string p1, "toolType"

    .line 169
    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string p1, "lifecycle_from"

    .line 171
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_30

    const-string p4, ""

    :cond_30
    const-string p1, "work_url"

    .line 172
    invoke-interface {v5, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v2, "ct_sdk_work_page_lifecycle"

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final loadEnd(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->startMillis:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    .line 61
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 62
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->workUrl:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1c

    const-string p5, "offline"

    goto :goto_1e

    :cond_1c
    const-string p5, "online"

    :goto_1e
    const-string v1, "loadingMode"

    .line 63
    invoke-interface {v5, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const-string v1, "duration"

    .line 64
    invoke-interface {v5, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const-string v0, "load_end_duration"

    .line 65
    invoke-interface {v5, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_42

    .line 66
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_40

    goto :goto_42

    :cond_40
    const/4 v1, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v1, 0x1

    :goto_43
    if-nez v1, :cond_4a

    const-string v1, "toolType"

    .line 67
    invoke-interface {v5, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    if-eqz p3, :cond_52

    .line 69
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_53

    :cond_52
    const/4 p5, 0x1

    :cond_53
    if-nez p5, :cond_5a

    const-string p2, "enter_from"

    .line 70
    invoke-interface {v5, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    if-eqz p6, :cond_7c

    .line 211
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_64
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v5, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 75
    :cond_7c
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v6, 0x1

    const-string v2, "ct_sdk_work_loading"

    move v3, p1

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final loadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->startMillis:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    .line 33
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 34
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->workUrl:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "duration"

    .line 35
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "load_end_duration"

    .line 36
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3b

    .line 37
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v2, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v2, 0x1

    :goto_3c
    if-nez v2, :cond_43

    const-string v2, "toolType"

    .line 38
    invoke-interface {v5, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    if-eqz p3, :cond_4b

    .line 40
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4c

    :cond_4b
    const/4 v0, 0x1

    :cond_4c
    if-nez v0, :cond_53

    const-string p2, "enter_from"

    .line 41
    invoke-interface {v5, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_53
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v2, "ct_sdk_work_loading_process"

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final loadStart(Ljava/lang/String;)V
    .registers 4

    const-string v0, "workUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->startMillis:J

    .line 24
    sput-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->workUrl:Ljava/lang/String;

    return-void
.end method

.method public final managerLoadUrl(Ljava/lang/String;)V
    .registers 9

    const-string v0, "workUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "url"

    .line 12
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v2, "ct_sdk_perform_load_url"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final save(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .registers 15

    .line 114
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "保存结果:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    const-string v2, ""

    goto :goto_2a

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "失败原因:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSaveWork(Ljava/lang/String;)V

    .line 115
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_46

    .line 116
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_44

    goto :goto_46

    :cond_44
    const/4 v2, 0x0

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v2, 0x1

    :goto_47
    if-nez v2, :cond_4e

    const-string v2, "toolType"

    .line 117
    invoke-interface {v6, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    if-eqz p3, :cond_56

    .line 119
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_57

    :cond_56
    const/4 v0, 0x1

    :cond_57
    if-nez v0, :cond_5e

    const-string p2, "enter_from"

    .line 120
    invoke-interface {v6, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    if-eqz p5, :cond_7f

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    long-to-float p2, p2

    const/high16 p3, 0x447a0000  # 1000.0f

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string p5, "duration"

    .line 124
    invoke-interface {v6, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "save_duration"

    .line 125
    invoke-interface {v6, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    if-eqz p6, :cond_91

    .line 128
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8a

    const-string p2, "offline"

    goto :goto_8c

    :cond_8a
    const-string p2, "online"

    :goto_8c
    const-string p3, "loadingMode"

    invoke-interface {v6, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_91
    sget-object v2, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const/4 v7, 0x1

    const-string v3, "ct_sdk_work_save"

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
