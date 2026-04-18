.class public final Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;
.super Ljava/lang/Object;
.source "WebLogEventUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 16
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    if-nez p2, :cond_6

    const-string p2, "empty"

    :cond_6
    const-string v1, "ct_type"

    .line 18
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const-string v1, "ct_sdk_nativetojs_error"

    const/4 v2, 0x1

    move-object v3, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final exception(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    if-nez p2, :cond_6

    const-string p2, "empty"

    :cond_6
    const-string v1, "ct_type"

    .line 25
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const-string v1, "ct_sdk_js_to_native_exception"

    const/4 v2, 0x1

    move-object v3, p1

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final preload(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 37
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    if-nez p2, :cond_6

    const-string p2, "empty"

    :cond_6
    const-string v1, "url"

    .line 39
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    const-string v1, "ct_sdk_webview_preload"

    move v2, p1

    move-object v3, p3

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final renderGone(Ljava/lang/String;)V
    .registers 8

    .line 30
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    if-nez p1, :cond_6

    const-string p1, "empty"

    :cond_6
    const-string v1, "url"

    .line 32
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    const-string v1, "ct_sdk_webview_render_gone"

    const/4 v2, 0x1

    const-string v3, "渲染进程崩溃"

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final timeout(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 6
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    if-nez p2, :cond_6

    const-string p2, "empty"

    :cond_6
    const-string v1, "ct_type"

    .line 10
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const-string v1, "ct_sdk_nativetojs_timeout"

    const/4 v2, 0x1

    move-object v3, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
